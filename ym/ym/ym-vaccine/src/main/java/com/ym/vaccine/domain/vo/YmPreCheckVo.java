package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

import java.io.Serializable;

/**
 * 预检信息查询视图对象 ym_pre_check
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmPreCheckVo implements Serializable {

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
    private Long isMedicine;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String medicine;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long isContraindication;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String contraindication;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long bloodPressureHigh;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long bloodPressureLow;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long temperature;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long workerId;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long appointId;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String note;

    /**
     * 接种人姓名
     */
    private String realName;
    /**
     * 医护人员姓名
     */
    private String workerName;
    /**
     * 接种点名称
     */
    private String siteName;
    /**
     * 签到时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date createTime;


}
