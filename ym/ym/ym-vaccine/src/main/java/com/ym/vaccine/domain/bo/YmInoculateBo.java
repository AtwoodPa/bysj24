package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗接种记录业务对象 ym_inoculate
 *
 * @author ym
 * @date 2024-02-19
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class YmInoculateBo extends BaseEntity {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long id;

    /**
     * 接种部位
     */
    @NotBlank(message = "接种部位不能为空", groups = {AddGroup.class, EditGroup.class})
    private String part;

    /**
     * 预约信息
     */
    @NotNull(message = "预约信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long appointId;

    /**
     * 疫苗信息
     */
    @NotNull(message = "疫苗信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long vaccineId;

    /**
     * 医护信息
     */
    @NotNull(message = "医护信息不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long userId;

    /**
     * 接种状态（已接种、未接种、已取消）
     */
    @NotNull(message = "接种状态（已接种、未接种、已取消）不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long status;

    /**
     * 备注
     */
    @NotBlank(message = "备注不能为空", groups = {AddGroup.class, EditGroup.class})
    private String remark;

    /**
     * 接种时间
     */
    @NotNull(message = "接种时间不能为空", groups = {AddGroup.class, EditGroup.class})
    private Date inoculateTime;


}
