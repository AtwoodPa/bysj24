package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;

import lombok.Data;


import java.io.Serializable;

/**
 * 疫苗接种站点管理视图对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-02-19
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
     * 站点名称
     */
    @ExcelProperty(value = "站点名称")
    private String name;

    /**
     * 站点地址
     */
    @ExcelProperty(value = "站点地址")
    private String address;

    /**
     * 站点图片
     */
    @ExcelProperty(value = "站点图片")
    private String imgUrl;

    /**
     * 联系方式
     */
    @ExcelProperty(value = "联系方式")
    private String contact;


}
