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
 * 房源图片对象 house_image
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("house_image")
public class HouseImage extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 房源id
     */
    private Long houseId;
    /**
     * 图片名称
     */
    private String imageName;
    /**
     * 图片路径
     */
    private String imagePath;
    /**
     * 图片url
     */
    private String imgUrl;
    /**
     * 图片大小
     */
    private BigDecimal imageSize;

}
