package com.ym.vaccine.domain.bo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.ym.common.core.domain.BaseEntity;
import org.springframework.format.annotation.DateTimeFormat;

/**
 * 疫苗接种记录业务对象 ym_inoculate
 *
 * @author ym
 * @date 2024-01-29
 */

@Data
public class YmInoculateBo implements Serializable {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long id;
    /**
     * 接种部位
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private String part;
    /**
     * 预约信息
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long appointId;
    /**
     * 签到时间
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    /**
     * 疫苗信息
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long vaccineId;
    /**
     * 用户信息
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long userId;

    /**
     * 接种状态（已接种、未接种、已取消）
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private Long status;

    /**
     * 备注
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private String remark;

    /**
     * 接种时间
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date inoculateTime;

}
