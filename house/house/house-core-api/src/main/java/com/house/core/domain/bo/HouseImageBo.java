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
 * 房源图片业务对象 house_image
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class HouseImageBo extends BaseEntity {

    /**
     * 
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 房源id
     */
    @NotNull(message = "房源id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long houseId;

    /**
     * 图片名称
     */
    @NotBlank(message = "图片名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imageName;

    /**
     * 图片路径
     */
    @NotBlank(message = "图片路径不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imagePath;

    /**
     * 图片url
     */
    @NotBlank(message = "图片url不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;

    /**
     * 图片大小
     */
    @NotNull(message = "图片大小不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal imageSize;


}
