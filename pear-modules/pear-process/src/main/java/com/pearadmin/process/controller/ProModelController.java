package com.pearadmin.process.controller;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.pearadmin.common.web.base.BaseController;
import com.pearadmin.common.web.domain.request.PageDomain;
import com.pearadmin.common.web.domain.response.Result;
import com.pearadmin.common.web.domain.response.ResultTable;
import com.pearadmin.process.param.CreateModelParam;
import org.activiti.bpmn.model.BpmnModel;
import org.activiti.editor.constants.ModelDataJsonConstants;
import org.activiti.editor.language.json.converter.BpmnJsonConverter;
import org.activiti.engine.RepositoryService;
import org.activiti.engine.repository.Deployment;
import org.activiti.engine.repository.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/process/model/")
public class ProModelController extends BaseController {

    private String modelPath = "process/model/";

    @Resource
    private RepositoryService repositoryService;

    @Resource
    private ObjectMapper objectMapper;

    @GetMapping("main")
    public ModelAndView view(ModelAndView modelAndView)
    {
        modelAndView.setViewName(modelPath+"main");
        return modelAndView;
    }

    @GetMapping("editor")
    public ModelAndView editor(ModelAndView modelAndView){
        modelAndView.setViewName("process/model/editor");
        return modelAndView;
    }

    @GetMapping("data")
    public ResultTable list(PageDomain pageDomain){
        List<Model> list = repositoryService.createModelQuery().listPage(pageDomain.start(),pageDomain.end());
        return pageTable(list,repositoryService.createModelQuery().list().size());
    }

    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName(modelPath+"add");
        return modelAndView;
    }

    @PostMapping("create")
    public Result create(@RequestBody CreateModelParam param) throws IOException {
        Model model = repositoryService.newModel();
        ObjectNode modelNode = objectMapper.createObjectNode();
        modelNode.put(ModelDataJsonConstants.MODEL_NAME, param.getName());
        modelNode.put(ModelDataJsonConstants.MODEL_DESCRIPTION, param.getDescription());
        modelNode.put(ModelDataJsonConstants.MODEL_REVISION, param.getVersion());
        model.setName(param.getName());
        model.setKey(param.getKey());
        model.setMetaInfo(modelNode.toString());
        repositoryService.saveModel(model);
        createObjectNode(model.getId());
        return success("创建成功", model.getId());
    }

    private void createObjectNode(String modelId){
        ObjectNode editorNode = objectMapper.createObjectNode();
        editorNode.put("id", "canvas");
        editorNode.put("resourceId", "canvas");
        ObjectNode stencilSetNode = objectMapper.createObjectNode();
        stencilSetNode.put("namespace","http://b3mn.org/stencilset/bpmn2.0#");
        editorNode.put("stencilset", stencilSetNode);
        try {
            repositoryService.addModelEditorSource(modelId,editorNode.toString().getBytes("utf-8"));
        } catch (Exception e) {
            System.out.println("创建模型时完善ModelEditorSource服务异常："+e);
        }
        System.out.println("创建模型完善ModelEditorSource结束");
    }

    @PostMapping("deleteById")
    public Result deleteById(String modelId){
        repositoryService.deleteModel(modelId);
        return success("删除成功");
    }

    @ResponseBody
    @RequestMapping("/publish")
    public Object publish(String modelId){
        Map<String, String> map = new HashMap<String, String>();
        try {
            Model modelData = repositoryService.getModel(modelId);
            byte[] bytes = repositoryService.getModelEditorSource(modelData.getId());
            if (bytes == null) {
                return failure("模板数据为空");
            }
            JsonNode modelNode = new ObjectMapper().readTree(bytes);
            BpmnModel model = new BpmnJsonConverter().convertToBpmnModel(modelNode);
            Deployment deployment = repositoryService.createDeployment()
                    .name(modelData.getName())
                    .addBpmnModel(modelData.getKey()+".bpmn20.xml", model)
                    .deploy();
            modelData.setDeploymentId(deployment.getId());
            repositoryService.saveModel(modelData);
            return success("部署成功");
        } catch (Exception e) {
            return failure("部署异常");
        }
    }

}
