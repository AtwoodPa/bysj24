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
 * 接种签到视图对象 ym_sign
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmSignVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 接种人姓名
     */
    private String realName;
    /**
     *
     */
    @ExcelProperty(value = "")
    private Long workerId;

    /**
     * 医护人员姓名
     */
    private String workerName;

    /**
     * 接种点名称
     */
    private String siteName;
    /**
     *
     */
    @ExcelProperty(value = "")
    private Long appointId;
    /**
     * 签到时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    private Date createTime;

}
