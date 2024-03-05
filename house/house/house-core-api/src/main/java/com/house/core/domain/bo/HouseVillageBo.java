package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import java.math.BigDecimal;
import com.house.common.core.domain.BaseEntity;

/**
 * 小区管理业务对象 house_village
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class HouseVillageBo extends BaseEntity {

    /**
     * id
     */
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 省
     */
    @NotBlank(message = "省不能为空", groups = { AddGroup.class, EditGroup.class })
    private String province;

    /**
     * 市
     */
    @NotBlank(message = "市不能为空", groups = { AddGroup.class, EditGroup.class })
    private String city;

    /**
     * 区
     */
    @NotBlank(message = "区不能为空", groups = { AddGroup.class, EditGroup.class })
    private String area;

    /**
     * 名称
     */
    @NotBlank(message = "名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 代号
     */
    @NotBlank(message = "代号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String code;

    /**
     * 年份
     */
    @NotNull(message = "年份不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long year;

    /**
     * 建筑类型
     */
    @NotBlank(message = "建筑类型不能为空", groups = { AddGroup.class, EditGroup.class })
    private String type;

    /**
     * 绿化率
     */
    @NotNull(message = "绿化率不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal green;

    /**
     * 介绍
     */
    @NotBlank(message = "介绍不能为空", groups = { AddGroup.class, EditGroup.class })
    private String introduce;

    /**
     * 靠近地铁
     */
    @NotNull(message = "靠近地铁不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long wayState;

    /**
     * 地铁线路
     */
    @NotBlank(message = "地铁线路不能为空", groups = { AddGroup.class, EditGroup.class })
    private String wayCode;

    /**
     * 地铁距离
     */
    @NotNull(message = "地铁距离不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long waySpace;

    /**
     * 经度
     */
    @NotNull(message = "经度不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal lon;

    /**
     * 纬度
     */
    @NotNull(message = "纬度不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal Lat;

    /**
     * 状态
     */
    @NotNull(message = "状态不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long state;

    /**
     * 
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;


}
