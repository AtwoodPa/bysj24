package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗类型，存储疫苗的类型信息视图对象 ym_vaccine_type
 *
 * @author ym
 * @date 2024-01-17
 */
@Data
@ExcelIgnoreUnannotated
public class YmVaccineTypeVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 类型id
     */
    @ExcelProperty(value = "类型id")
    private Long typeId;

    /**
     * 疫苗类型名称
     */
    @ExcelProperty(value = "疫苗类型名称")
    private String typeName;


}
