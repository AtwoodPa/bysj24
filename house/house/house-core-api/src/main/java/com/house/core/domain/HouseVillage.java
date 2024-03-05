package com.house.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.math.BigDecimal;
import com.house.common.core.domain.BaseEntity;

/**
 * 小区管理对象 house_village
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("house_village")
public class HouseVillage extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 省
     */
    private String province;
    /**
     * 市
     */
    private String city;
    /**
     * 区
     */
    private String area;
    /**
     * 名称
     */
    private String name;
    /**
     * 代号
     */
    private String code;
    /**
     * 年份
     */
    private Long year;
    /**
     * 建筑类型
     */
    private String type;
    /**
     * 绿化率
     */
    private BigDecimal green;
    /**
     * 介绍
     */
    private String introduce;
    /**
     * 靠近地铁
     */
    private Long wayState;
    /**
     * 地铁线路
     */
    private String wayCode;
    /**
     * 地铁距离
     */
    private Long waySpace;
    /**
     * 经度
     */
    private BigDecimal lon;
    /**
     * 纬度
     */
    private BigDecimal Lat;
    /**
     * 状态
     */
    private Long state;
    /**
     * 
     */
    private String remark;

}
