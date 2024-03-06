package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.house.common.core.domain.BaseEntity;

/**
 * 房源特色业务对象 house_feature
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class HouseFeatureBo implements Serializable {

    /**
     * 特色id
     */
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
