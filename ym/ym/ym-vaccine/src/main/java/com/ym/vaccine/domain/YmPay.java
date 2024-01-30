package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 支付功能对象 ym_pay
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_pay")
public class YmPay implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 支付费用
     */
    private Long cost;
    /**
     * 预约id
     */
    private Long appointId;

}
