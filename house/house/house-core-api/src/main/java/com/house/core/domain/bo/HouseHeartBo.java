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
 * 房屋收藏业务对象 house_heart
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class HouseHeartBo implements Serializable {

    /**
     * 
     */
    private Long id;

    /**
     * 房屋id
     */
    private Long houseId;

    /**
     * 用户id
     */
    private Long userId;


}
