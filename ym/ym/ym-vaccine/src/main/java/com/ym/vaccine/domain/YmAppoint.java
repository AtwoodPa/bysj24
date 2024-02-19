package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;


import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗预约对象 ym_appoint
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
//@EqualsAndHashCode(callSuper = true)
@TableName("ym_appoint")
public class YmAppoint implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 预约id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 预约用户信息
     */
    private Long userId;
    /**
     * 预约日期
     */
    private Date appointDate;
    /**
     * 上午 or 下午
     */
    private String timeSlot;
    /**
     * 预约状态（待支付、已支付、已接种）
     */
    private Long status;
    /**
     * 接种站点信息
     */
    private Long inoculateSiteId;
    /**
     * 疫苗信息
     */
    private Long vaccineId;
    /**
     * 第几针
     */
    private String whichPin;

}

