package com.pearadmin.system.domain;

import lombok.Data;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.pearadmin.common.web.base.BaseDomain;

/**
 * notice对象 sys_notice
 * 
 * @author jmys
 * @date 2021-03-13
 */
@Data
public class SysNotice extends BaseDomain
{
    private static final long serialVersionUID = 1L;

    /** 编号 */
    private String id;

    /** 标题 */
    private String title;

    /** 内容 */
    private String content;

    /** 发送人 */
    private String sender;

    /** 接收者 */
    private String accept;

    /** 类型 */
    private String type;

}
