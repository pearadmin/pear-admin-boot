package com.pearadmin.system.param;

import lombok.Data;
import org.apache.ibatis.annotations.Param;

@Data
public class EditPasswordParam {

    private String oldPassword;

    private String newPassword;

    private String confirmPassword;
}
