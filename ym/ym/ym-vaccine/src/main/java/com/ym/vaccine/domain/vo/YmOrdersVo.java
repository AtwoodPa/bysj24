package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;

import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;

import java.io.Serializable;

/**
 * 订单管理视图对象 ym_orders
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
@ExcelIgnoreUnannotated
public class YmOrdersVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 预约信息（用户信息）
     */
    @ExcelProperty(value = "预约信息", converter = ExcelDictConvert.class)
    @ExcelDictFormat(readConverterExp = "用=户信息")
    private Long appointId;

    /**
     * 订单总金额
     */
    @ExcelProperty(value = "订单总金额")
    private Long totalAmount;

    /**
     * 支付方式
     */
    @ExcelProperty(value = "支付方式")
    private String paymentMethod;

    /**
     * 订单状态（待支付、已支付、已取消）
     */
    @ExcelProperty(value = "订单状态", converter = ExcelDictConvert.class)
    @ExcelDictFormat(readConverterExp = "待=支付、已支付、已取消")
    private Long status;


}

