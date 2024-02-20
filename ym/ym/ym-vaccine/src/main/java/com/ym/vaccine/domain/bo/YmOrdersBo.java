package com.ym.vaccine.domain.bo;


import com.ym.common.core.domain.BaseEntity;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;


import javax.validation.constraints.*;

/**
 * 订单管理业务对象 ym_orders
 *
 * @author ym
 * @date 2024-02-19
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class YmOrdersBo extends BaseEntity {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long id;

    /**
     * 预约信息（用户信息）
     */
    @NotNull(message = "预约信息（用户信息）不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long appointId;

    /**
     * 订单总金额
     */
    @NotNull(message = "订单总金额不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long totalAmount;

    /**
     * 支付方式
     */
    @NotBlank(message = "支付方式不能为空", groups = {AddGroup.class, EditGroup.class})
    private String paymentMethod;

    /**
     * 订单状态（0待支付、1已支付、2已取消）
     */
    @NotNull(message = "订单状态（待支付、已支付、已取消）不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long status;


}

