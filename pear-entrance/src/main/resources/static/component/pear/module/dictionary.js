layui.define(['jquery', 'element','form'], function(exports) {
    "use strict";

    const MOD_NAME = 'dictionary';
    const $ = layui.jquery;
    const form = layui.form;
    const dictionary = new function() {}

    $("select[dict-code]").each(function(){
        var _that = $(this);
        var dictCode = $(this).attr("dict-code");

        var defaultValue = $("[dict-code='"+dictCode+"']").attr("default-value");

        $.ajax({
            url:'/system/dictData/selectByCode',
            data:{'typeCode':dictCode},
            type:'get',
            success:function(result){
                if(result.success === true){
                    for (var j =0;j<result.data.length;j++){

                        var flag = false;

                        if(defaultValue === result.data[j].dataValue){
                            flag = true;
                        }
                        if(flag){
                            _that.append("<option selected = '"+ flag +"' value='"+result.data[j].dataValue+"'>"+result.data[j].dataLabel+"</option>");
                        }else{
                            _that.append("<option  value='"+result.data[j].dataValue+"'>"+result.data[j].dataLabel+"</option>");
                        }

                    }
                }
                form.render();
            }
        })
    });

    exports(MOD_NAME, dictionary);
});
