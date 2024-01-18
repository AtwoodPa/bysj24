package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗预约，存储用户预约信息对象 ym_appointment
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@TableName("ym_appointment")
public class YmAppointment  {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "appointment_ID")
    private Long appointmentId;
    /**
     *
     */
    private Long userId;
    /**
     *
     */
    private Long vaccineId;
    /**
     * 预约状态（0_Booked 1_Pending 2_Completed）
     */
    private Long status;

    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

}
