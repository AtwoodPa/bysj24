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
 * 留观查询视图对象 ym_observe
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmObserveVo implements Serializable {

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
    private Long isFinish;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String note;


    private Date createTime;
    private Date endTime;

    private String realName;
    private String workerName;
    private String siteName;


}
