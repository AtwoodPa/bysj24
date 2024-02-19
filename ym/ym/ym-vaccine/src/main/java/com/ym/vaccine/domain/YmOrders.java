package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.ym.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

@Data
//@EqualsAndHashCode(callSuper = true)
@TableName("ym_orders")
public class YmOrders implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 预约信息（用户信息）
     */
    private Long appointId;
    /**
     * 订单总金额
     */
    private Long totalAmount;
    /**
     * 支付方式
     */
    private String paymentMethod;
    /**
     * 订单状态（待支付、已支付、已取消）
     */
    private Long status;

}
