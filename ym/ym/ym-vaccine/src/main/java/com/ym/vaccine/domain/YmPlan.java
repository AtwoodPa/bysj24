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
 * 预约计划管理对象 ym_plan
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_plan")
public class YmPlan implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     *
     */
    private Date startDate;
    /**
     *
     */
    private Date endDate;
    /**
     *
     */
    private Long startTimeMorning;
    /**
     *
     */
    private Long endTimeMorning;
    /**
     *
     */
    private Long startTimeAfternoon;
    /**
     *
     */
    private Long endTimeAfternoon;
    /**
     *
     */
    private Long vaccineId;
    /**
     *
     */
    private Long inoculateSiteId;
    /**
     *
     */
    private Long amount;
    /**
     *
     */
    private Long startTimeEvening;
    /**
     *
     */
    private Long endTimeEvening;
    /**
     *
     */
    private Long morningLimit;
    /**
     *
     */
    private Long afternoonLimit;
    /**
     *
     */
    private Long eveningLimit;

}
