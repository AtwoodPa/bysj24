package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗厂家，存储疫苗厂家信息视图对象 ym_manufacturer
 *
 * @author ym
 * @date 2024-01-17
 */
@Data
@ExcelIgnoreUnannotated
public class YmManufacturerVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long manufacturerId;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String facturerName;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String address;

    /**
     * 厂家信息描述
     */
    @ExcelProperty(value = "厂家信息描述")
    private String description;


}
