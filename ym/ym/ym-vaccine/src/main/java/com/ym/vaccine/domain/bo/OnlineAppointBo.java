package com.ym.vaccine.domain.bo;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.Date;

/**
 * @author supanpan
 * @date 2024/02/20
 */
@Data
public class OnlineAppointBo implements Serializable {

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
