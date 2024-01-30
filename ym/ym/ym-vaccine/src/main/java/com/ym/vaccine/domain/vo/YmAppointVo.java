package com.ym.vaccine.domain.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 预约视图对象 ym_appoint
 *
 * @author ym
 * @date 2024-01-29
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
     * 预约用户id
     */
    @ExcelProperty(value = "预约用户id")
    private Long userId;

    /**
     * 真实姓名
     */
    private String realName;

    /**
     * 预约日期
     */
    @ExcelProperty(value = "预约日期")
    private Date appointDate;

    /**
     * 操作时间
     */
    private Date createTime;
    /**
     *
     */
    @ExcelProperty(value = "")
    private Long status;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String qrCodeUrl;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long planId;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long timeSlot;


}
