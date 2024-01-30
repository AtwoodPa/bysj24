package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.domain.BaseEntity;

/**
 * 预约对象 ym_appoint
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_appoint")
public class YmAppoint implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 预约用户id
     */
    private Long userId;
    /**
     * 预约日期
     */
    private Date appointDate;
    /**
     *
     */
    private Long status;
    /**
     *
     */
    private String qrCodeUrl;
    /**
     *
     */
    private Long planId;
    /**
     *
     */
    private Long timeSlot;

}
