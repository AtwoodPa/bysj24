package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗预约，存储用户预约信息业务对象 ym_appointment
 *
 * @author ym
 * @date 2024-01-18
 */

@Data
public class YmAppointmentBo  {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long appointmentId;

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long userId;

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long vaccineId;

    /**
     * 预约状态（0_Booked 1_Pending 2_Completed）
     */
    @NotNull(message = "预约状态（0_Booked 1_Pending 2_Completed）不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long status;


}
