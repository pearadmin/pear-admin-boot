package com.pearadmin.system.param;

import lombok.Getter;
import lombok.Setter;

/**
 * @Author: Heiky
 * @Date: 2020/12/31 16:46
 * @Description:
 */

@Getter
@Setter
public class EditPassword {

    private String oldPassword;

    private String newPassword;

    private String confirmPassword;

}
