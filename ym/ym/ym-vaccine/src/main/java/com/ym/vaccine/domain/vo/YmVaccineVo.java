package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗，存储疫苗信息视图对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@ExcelIgnoreUnannotated
public class YmVaccineVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 疫苗id
     */
    @ExcelProperty(value = "疫苗id")
    private Long vaccineId;

    /**
     * 疫苗名称
     */
    @ExcelProperty(value = "疫苗名称")
    private String vaccineName;

    /**
     * 疫苗类型id
     */
    @ExcelProperty(value = "疫苗类型id")
    private Long typeId;

    /**
     * 疫苗厂家id
     */
    @ExcelProperty(value = "疫苗厂家id")
    private Long manufacturerId;

    /**
     * 疫苗信息描述
     */
    @ExcelProperty(value = "疫苗信息描述")
    private String description;


}
