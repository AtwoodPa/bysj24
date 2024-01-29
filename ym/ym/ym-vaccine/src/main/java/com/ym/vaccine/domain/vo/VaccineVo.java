package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗信息视图对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class VaccineVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 疫苗id
     */
    @ExcelProperty(value = "疫苗id")
    private Long id;

    /**
     * 疫苗名称
     */
    @ExcelProperty(value = "疫苗名称")
    private String name;

    /**
     * 疫苗价格
     */
    @ExcelProperty(value = "疫苗价格")
    private Long price;

    /**
     * 疫苗厂家
     */
    @ExcelProperty(value = "疫苗厂家")
    private String manufacturer;

    /**
     * 疫苗分类
     */
    @ExcelProperty(value = "疫苗分类")
    private String category;

    /**
     * 疫苗详情
     */
    @ExcelProperty(value = "疫苗详情")
    private String detail;

    /**
     * 疫苗图片地址
     */
    @ExcelProperty(value = "疫苗图片地址")
    private String imgUrl;


}
