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

/**
 * Describe: 流程模型控制器
 * Author: 就眠仪式
 * createTime: 2019/10/23
 * */
@RestController
@RequestMapping("/process/model/")
public class ProModelController extends BaseController {

    /**
     * thymeleaf 基础路径配置
     * */
    private String modelPath = "process/model/";

    /**
     * 工作流程服务
     * */
    @Resource
    private RepositoryService repositoryService;

    @Resource
    private ObjectMapper objectMapper;

    /**
     * Describe: 获取流程模型列表视图
     * Param: modelAndView
     * Return: 流程模型列表视图
     * */
    @GetMapping("main")
    public ModelAndView view(ModelAndView modelAndView)
    {
        modelAndView.setViewName(modelPath+"main");
        return modelAndView;
    }

    /**
     * Describe: 获取流程编辑器视图
     * Param: modelAndView
     * Return: 流程编辑视图
     * */
    @GetMapping("editor")
    public ModelAndView editor(ModelAndView modelAndView){
        modelAndView.setViewName(modelPath+"editor");
        return modelAndView;
    }

    /**
     * Describe: 获取流程模型列表数据
     * Param: modelAndView
     * Return: ResultTable
     * */
    @GetMapping("data")
    public ResultTable list(PageDomain pageDomain){
        List<Model> list = repositoryService.createModelQuery().listPage(pageDomain.start(),pageDomain.end());
        return pageTable(list,repositoryService.createModelQuery().list().size());
    }

    /**
     * Describe: 流程创建视图
     * Param: modelAndView
     * Return: 流程创建视图
     * */
    @GetMapping("add")
    public ModelAndView add(ModelAndView modelAndView){
        modelAndView.setViewName(modelPath+"add");
        return modelAndView;
    }

    /**
     * Describe: 创建流程图
     * Param: createModelParam
     * Return: Result
     * */
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

    /**
     * Describe: 根据 Id 删除流程图
     * Param: modelId
     * Return: Result
     * */
    @PostMapping("deleteById")
    public Result deleteById(String modelId){
        repositoryService.deleteModel(modelId);
        return success("删除成功");
    }

    /**
     * Describe: 发布流程
     * Param: modelId
     * Return: Result
     * */
    @ResponseBody
    @RequestMapping("/publish")
    public Result publish(String modelId){
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
