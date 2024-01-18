package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗类型，存储疫苗的类型信息业务对象 ym_vaccine_type
 *
 * @author ym
 * @date 2024-01-17
 */

@Data
public class YmVaccineTypeBo {

    /**
     * 类型id
     */
    // @NotNull(message = "类型id不能为空", groups = { EditGroup.class })
    private Long typeId;

    /**
     * 疫苗类型名称
     */
    // @NotBlank(message = "疫苗类型名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String typeName;


}
