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
 * 预约计划管理视图对象 ym_plan
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmPlanVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Date startDate;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Date endDate;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long startTimeMorning;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long endTimeMorning;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long startTimeAfternoon;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long endTimeAfternoon;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long vaccineId;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long inoculateSiteId;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long amount;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long startTimeEvening;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long endTimeEvening;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long morningLimit;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long afternoonLimit;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long eveningLimit;


}
