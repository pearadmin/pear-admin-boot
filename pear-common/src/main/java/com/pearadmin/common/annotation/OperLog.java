package com.pearadmin.common.annotation;

import com.pearadmin.common.enums.BusinessType;
import com.pearadmin.common.enums.OperatorType;
import java.lang.annotation.*;

@Target({ ElementType.PARAMETER, ElementType.METHOD })
@Retention(RetentionPolicy.RUNTIME)
@Documented

public @interface OperLog {

    public String title() default "";

    public BusinessType businessType() default BusinessType.OTHER;

    public OperatorType operatorType() default OperatorType.MANAGE;

}
