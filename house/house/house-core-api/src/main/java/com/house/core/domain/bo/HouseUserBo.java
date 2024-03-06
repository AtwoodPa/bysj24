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
 * 出租管理业务对象 house_user
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class HouseUserBo implements Serializable {

    /**
     * 
     */
    private Long id;

    /**
     * 房源id
     */
    private Long houseId;

    /**
     * 用户id
     */
    private Long userId;

    /**
     * 发布人id(房东id)
     */
    private Long publishId;

    /**
     * 实际价格
     */
    private BigDecimal actualPrice;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    private Long state;

    /**
     * 
     */
    private String remark;


}
