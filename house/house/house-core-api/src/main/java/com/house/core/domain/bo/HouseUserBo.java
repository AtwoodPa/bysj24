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
 * 出租管理业务对象 house_user
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class HouseUserBo extends BaseEntity {

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
     * 用户id
     */
    @NotNull(message = "用户id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long userId;

    /**
     * 发布人id(房东id)
     */
    @NotNull(message = "发布人id(房东id)不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long publishId;

    /**
     * 实际价格
     */
    @NotNull(message = "实际价格不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal actualPrice;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    @NotNull(message = "0：待出租, 1：已出租, 2:下架不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long state;

    /**
     * 
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;


}
