package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗预约业务对象 ym_appoint
 *
 * @author ym
 * @date 2024-02-19
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class YmAppointBo extends BaseEntity {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long id;

    /**
     * 预约用户信息
     */
    @NotNull(message = "预约用户信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long userId;

    /**
     * 预约日期
     */
    @NotNull(message = "预约日期不能为空", groups = {AddGroup.class, EditGroup.class})
    private Date appointDate;

    /**
     * 上午 or 下午
     */
    @NotBlank(message = "上午 or 下午不能为空", groups = {AddGroup.class, EditGroup.class})
    private String timeSlot;

    /**
     * 预约状态（待支付、已支付、已接种）
     */
    @NotNull(message = "预约状态（待支付、已支付、已接种）不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long status;

    /**
     * 接种站点信息
     */
    @NotNull(message = "接种站点信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long inoculateSiteId;

    /**
     * 疫苗信息
     */
    @NotNull(message = "疫苗信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long vaccineId;

    /**
     * 第几针
     */
    @NotBlank(message = "第几针不能为空", groups = {AddGroup.class, EditGroup.class})
    private String whichPin;


}

