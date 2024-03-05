package com.house.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.house.common.core.domain.BaseEntity;

/**
 * 房源特色对象 house_feature
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("house_feature")
public class HouseFeature extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 特色id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 房源id
     */
    private Long houseId;
    /**
     * 特色描述
     */
    private String feature;

}
