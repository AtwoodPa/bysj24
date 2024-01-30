package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗接种站点管理视图对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmInoculateSiteVo implements Serializable {

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
    private String name;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String address;

    /**
     *
     */
    @ExcelProperty(value = "")
    private String imgUrl;


}
