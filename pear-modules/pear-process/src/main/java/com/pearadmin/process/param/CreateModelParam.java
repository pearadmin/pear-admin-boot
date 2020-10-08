package com.pearadmin.process.param;

import lombok.Data;

@Data
public class CreateModelParam {

   /**
    * 模板名称
    * */
   private String name;

   /**
    * 模板标识
    * */
   private String key;

   /**
    * 模板标识
    * */
   private String description;

   /**
    * 模板版本
    * */
   private String version;

}
