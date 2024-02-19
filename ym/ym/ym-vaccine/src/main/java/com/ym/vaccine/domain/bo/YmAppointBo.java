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
     * 接种人姓名
     */
    private String realName;
    /**
     * 预约日期
     */
    @NotNull(message = "预约日期不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date appointDate;
    /**
     * 上午 or 下午
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String timeSlot;
    /**
      *预约状态（待支付、已支付、已接种）
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long status;



    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long planId;
    /**
     * 接种站点id
     */
    private Long inoculateSiteId;

    /**
     * 疫苗id
     */
    private Long vaccineId;

    /**
     * 第几针
     */
    private String whichPin;
    private Date createTime;



}
