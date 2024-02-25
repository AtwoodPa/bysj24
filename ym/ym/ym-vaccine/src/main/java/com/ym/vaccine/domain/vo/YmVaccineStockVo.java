package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗出入库视图对象 ym_vaccine_stock
 *
 * @author ym
 * @date 2024-02-25
 */
@Data
@ExcelIgnoreUnannotated
public class YmVaccineStockVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 医院ID
     */
    @ExcelProperty(value = "医院ID")
    private Long siteId;

    /**
     * 疫苗ID
     */
    @ExcelProperty(value = "疫苗ID")
    private Long vaccineId;

    /**
     * 疫苗库存
     */
    @ExcelProperty(value = "疫苗库存")
    private Long siteAmount;


}
