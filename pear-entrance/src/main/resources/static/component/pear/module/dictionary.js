layui.define(['jquery', 'element','form'], function(exports) {
    "use strict";

    const MOD_NAME = 'dictionary';
    const $ = layui.jquery;
    const form = layui.form;

    const dictionary = new function() {
        /**
         * 根据Code 获取字典列表
         * @param dictCode
         */
        this.dictListByCode=function(dictCode){
            var loadDictData = sessionStorage.getItem('loadDictData'+dictCode);
            if(loadDictData==null) {
                $.ajax({
                    url: '/system/dictData/selectByCode',
                    data: {'typeCode': dictCode},
                    type: 'get',
                    async: false,
                    success: function (result) {
                        if (result.success === true) {
                            loadDictData=result.data;
                            try{
                                window.sessionStorage.removeItem('loadDictData'+dictCode);
                                sessionStorage.setItem('loadDictData'+dictCode, JSON.stringify(loadDictData));
                            }catch(e){

                            }
                        }

                    }
                })
            }else{
                loadDictData=JSON.parse(loadDictData);
            }
            return loadDictData;

        }
        this.parseDictText=function(value,dictCode){
            var loadDictData = this.dictListByCode(dictCode);
            for (var j = 0; j < loadDictData.length; j++) {
                if (value === loadDictData[j].dataValue) {
                    return loadDictData[j].dataLabel
                }
            }
            return value;
        }

    }

    $("select[dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("dict-code");

        var defaultValue = $("[dict-code='"+dictCode+"']").attr("default-value");
        var loadDictData =dictionary.dictListByCode(dictCode);
        for (var j =0;j<loadDictData.length;j++){
            var flag = false;
            if(defaultValue === loadDictData[j].dataValue){
                flag = true;
            }
            if(flag){
                _that.append("<option selected = '"+ flag +"' value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }else{
                _that.append("<option  value='"+loadDictData[j].dataValue+"'>"+loadDictData[j].dataLabel+"</option>");
            }
        }
        form.render();

    });

    exports(MOD_NAME, dictionary);
});
