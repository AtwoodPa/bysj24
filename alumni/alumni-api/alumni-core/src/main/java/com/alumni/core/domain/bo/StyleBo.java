package com.alumni.core.domain.bo;

import com.alumni.common.core.validate.AddGroup;
import com.alumni.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.alumni.common.core.domain.BaseEntity;

/**
 * 校友风采管理业务对象 style
 *
 * @author alumni
 * @date 2024-03-03
 */

@Data
public class StyleBo implements Serializable {

    /**
     * 主键ID
     */
    @NotNull(message = "主键ID不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 校友姓名
     */
    @NotBlank(message = "校友姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 校友描述
     */
    @NotBlank(message = "校友描述不能为空", groups = { AddGroup.class, EditGroup.class })
    private String descs;

    /**
     * 图片URL
     */
    @NotBlank(message = "图片URL不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;

    private Date createTime;


}
