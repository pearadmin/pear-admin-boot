layui.define(['jquery', 'element','form'], function(exports) {
    "use strict";

    const MOD_NAME = 'dictionary';
    const $ = layui.jquery;
    const form = layui.form;
    const dictionary = new function() {}

    $("select[dict-code]").each(function(item){
        var _that = $(this);
        var dictCode = $(this).attr("dict-code");
        $.ajax({
            url:'/system/dictData/selectByCode',
            data:{'typeCode':dictCode},
            type:'get',
            success:function(result){
                if(result.success === true){
                    for (var j =0;j<result.data.length;j++){
                        console.log(result[j]);
                        _that.append("<option value='"+result.data[j].dataValue+"'>"+result.data[j].dataLabel+"</option>");
                    }
                }else{
                    console.log("没成功")
                }
                form.render();
            }
        })
    });

    exports(MOD_NAME, dictionary);
});
