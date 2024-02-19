package com.ym.vaccine.domain.vo;

import java.util.Date;


import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;


import java.io.Serializable;


/**
 * 疫苗预约视图对象 ym_appoint
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
@ExcelIgnoreUnannotated
public class YmAppointVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 预约用户信息
     */
    @ExcelProperty(value = "预约用户信息")
    private Long userId;

    /**
     * 预约日期
     */
    @ExcelProperty(value = "预约日期")
    private Date appointDate;

    /**
     * 上午 or 下午
     */
    @ExcelProperty(value = "上午 or 下午")
    private String timeSlot;

    /**
     * 预约状态（待支付、已支付、已接种）
     */
    @ExcelProperty(value = "预约状态", converter = ExcelDictConvert.class)
    @ExcelDictFormat(readConverterExp = "待支付、已支付、已接种")
    private Long status;

    /**
     * 接种站点信息
     */
    @ExcelProperty(value = "接种站点信息")
    private Long inoculateSiteId;

    /**
     * 疫苗信息
     */
    @ExcelProperty(value = "疫苗信息")
    private Long vaccineId;

    /**
     * 第几针
     */
    @ExcelProperty(value = "第几针")
    private String whichPin;


}
