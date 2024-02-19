package com.ym.vaccine.domain.bo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;

/**
 * @author supanpan
 * @date 2024/02/19
 */
@Data
public class YmOrdersBo implements Serializable {
    /**
     * 订单id
     */
    private Long id;
    /**
     * 预约id
     */
    private Long appointId;
    /**
     * 支付时间
     */
    private Date createTime;
    /**
     * 订单总金额
     */
    private Double totalAmount;
    /**
     * 支付方式
     */
    private String paymentMethod;
    /**
     * 订单状态（待支付、已支付、已取消）
     */
    private Integer status;

}
