package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import java.math.BigDecimal;
import com.house.common.core.domain.BaseEntity;

/**
 * 房源图片业务对象 house_image
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class HouseImageBo implements Serializable {

    /**
     * 
     */
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
