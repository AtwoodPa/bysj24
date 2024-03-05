package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.house.common.core.domain.BaseEntity;

/**
 * 房源特色业务对象 house_feature
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class HouseFeatureBo extends BaseEntity {

    /**
     * 特色id
     */
    @NotNull(message = "特色id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 房源id
     */
    @NotNull(message = "房源id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long houseId;

    /**
     * 特色描述
     */
    @NotBlank(message = "特色描述不能为空", groups = { AddGroup.class, EditGroup.class })
    private String feature;


}
