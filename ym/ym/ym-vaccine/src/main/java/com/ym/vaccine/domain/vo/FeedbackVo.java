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
 * 用户反馈管理视图对象 feedback
 *
 * @author ym
 * @date 2024-02-24
 */
@Data
@ExcelIgnoreUnannotated
public class FeedbackVo implements Serializable {

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
    private String userid;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Date submittime;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String message;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Date backtime;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String backmessage;


}
