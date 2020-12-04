package com.pearadmin.app.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pearadmin.common.web.base.BaseDomain;

/**
 * 单表字典测试对象 t_dict_test
 * 
 * @author Songaw
 * @date 2020-12-04
 */
@Data
public class TDictTest extends BaseDomain
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 姓名 */
    private String name;

    /** 性别单选 */
    private String sex;

    /** 兴趣爱好多选 */
    private String interest;

    /** 用户来源下拉框 */
    private String source;

}
