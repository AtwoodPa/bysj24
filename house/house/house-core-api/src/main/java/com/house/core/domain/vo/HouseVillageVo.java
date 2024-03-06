package com.house.core.domain.vo;

import java.math.BigDecimal;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 小区管理视图对象 house_village
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class HouseVillageVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ExcelProperty(value = "id")
    private Long id;

    /**
     * 省
     */
    @ExcelProperty(value = "省")
    private String province;

    /**
     * 市
     */
    @ExcelProperty(value = "市")
    private String city;

    /**
     * 区
     */
    @ExcelProperty(value = "区")
    private String area;

    /** 区域，便于显示城市信息 */
    private String areaCode;
    /**
     * 名称
     */
    @ExcelProperty(value = "名称")
    private String name;

    /**
     * 代号
     */
    @ExcelProperty(value = "代号")
    private String code;

    /**
     * 年份
     */
    @ExcelProperty(value = "年份")
    private Long year;

    /**
     * 建筑类型
     */
    @ExcelProperty(value = "建筑类型")
    private String type;

    /**
     * 绿化率
     */
    @ExcelProperty(value = "绿化率")
    private BigDecimal green;

    /**
     * 介绍
     */
    @ExcelProperty(value = "介绍")
    private String introduce;

    /**
     * 靠近地铁
     */
    @ExcelProperty(value = "靠近地铁")
    private Long wayState;

    /**
     * 地铁线路
     */
    @ExcelProperty(value = "地铁线路")
    private String wayCode;

    /**
     * 地铁距离
     */
    @ExcelProperty(value = "地铁距离")
    private Long waySpace;

    /**
     * 经度
     */
    @ExcelProperty(value = "经度")
    private BigDecimal lon;

    /**
     * 纬度
     */
    @ExcelProperty(value = "纬度")
    private BigDecimal Lat;

    /**
     * 状态
     */
    @ExcelProperty(value = "状态")
    private Long state;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String remark;


}
