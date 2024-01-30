package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 支付功能业务对象 ym_pay
 *
 * @author ym
 * @date 2024-01-29
 */

@Data
public class YmPayBo implements Serializable {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 支付费用
     */
    @NotNull(message = "支付费用不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long cost;

    /**
     * 预约id
     */
    @NotNull(message = "预约id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long appointId;


}
