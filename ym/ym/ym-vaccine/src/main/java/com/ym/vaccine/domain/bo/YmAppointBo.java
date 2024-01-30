package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.domain.BaseEntity;

/**
 * 预约业务对象 ym_appoint
 *
 * @author ym
 * @date 2024-01-29
 */

@Data
public class YmAppointBo implements Serializable {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 预约用户id
     */
    @NotNull(message = "预约用户id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long userId;

    /**
     * 预约日期
     */
    @NotNull(message = "预约日期不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date appointDate;

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long status;

    /**
     *
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String qrCodeUrl;

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long planId;

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long timeSlot;


}
