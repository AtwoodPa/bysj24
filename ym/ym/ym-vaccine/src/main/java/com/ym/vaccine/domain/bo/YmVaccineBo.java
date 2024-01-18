package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗，存储疫苗信息业务对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-18
 */

@Data
public class YmVaccineBo  {

    /**
     * 疫苗id
     */
    @NotNull(message = "疫苗id不能为空", groups = { EditGroup.class })
    private Long vaccineId;

    /**
     * 疫苗名称
     */
    @NotBlank(message = "疫苗名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String vaccineName;

    /**
     * 疫苗类型id
     */
    @NotNull(message = "疫苗类型id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long typeId;

    /**
     * 疫苗厂家id
     */
    @NotNull(message = "疫苗厂家id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long manufacturerId;

    /**
     * 疫苗信息描述
     */
    @NotBlank(message = "疫苗信息描述不能为空", groups = { AddGroup.class, EditGroup.class })
    private String description;


}
