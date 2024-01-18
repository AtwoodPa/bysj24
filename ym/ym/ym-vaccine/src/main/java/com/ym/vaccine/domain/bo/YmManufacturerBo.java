package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗厂家，存储疫苗厂家信息业务对象 ym_manufacturer
 *
 * @author ym
 * @date 2024-01-17
 */

@Data
public class YmManufacturerBo {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long manufacturerId;

    /**
     *
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private String facturerName;

    /**
     *
     */
    @NotBlank(message = "不能为空", groups = {AddGroup.class, EditGroup.class})
    private String address;

    /**
     * 厂家信息描述
     */
    @NotBlank(message = "厂家信息描述不能为空", groups = {AddGroup.class, EditGroup.class})
    private String description;


}
