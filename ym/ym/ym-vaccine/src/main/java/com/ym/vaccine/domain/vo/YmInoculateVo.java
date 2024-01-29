package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗接种记录视图对象 ym_inoculate
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmInoculateVo implements Serializable {

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
    private String part;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String vaccineBatchCode;

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


}
