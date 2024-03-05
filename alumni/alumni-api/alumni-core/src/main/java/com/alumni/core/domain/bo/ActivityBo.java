package com.alumni.core.domain.bo;

import com.alumni.common.core.validate.AddGroup;
import com.alumni.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alumni.common.core.domain.BaseEntity;

/**
 * 校友活动管理业务对象 activity
 *
 * @author alumni
 * @date 2024-03-03
 */

@Data
public class ActivityBo implements Serializable {

    /**
     * 主键ID
     */
    @NotNull(message = "主键ID不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 活动名称
     */
    @NotBlank(message = "活动名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 活动地址
     */
    @NotBlank(message = "活动地址不能为空", groups = { AddGroup.class, EditGroup.class })
    private String address;

    /**
     * 图片URL
     */
    @NotBlank(message = "图片URL不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;

    /**
     * 活动描述
     */
    @NotBlank(message = "活动描述不能为空", groups = { AddGroup.class, EditGroup.class })
    private String descs;

    /**
     * 活动开始时间
     */
    @NotNull(message = "活动开始时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date startTime;

    /**
     * 活动结束时间
     */
    @NotNull(message = "活动结束时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date endTime;


}
