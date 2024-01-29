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
 * 疫苗信息业务对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-29
 */

@Data
public class VaccineBo implements Serializable {

    /**
     * 疫苗id
     */
    @NotNull(message = "疫苗id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 疫苗名称
     */
    @NotBlank(message = "疫苗名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;

    /**
     * 疫苗价格
     */
    @NotNull(message = "疫苗价格不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long price;

    /**
     * 疫苗厂家
     */
    @NotBlank(message = "疫苗厂家不能为空", groups = { AddGroup.class, EditGroup.class })
    private String manufacturer;

    /**
     * 疫苗分类
     */
    @NotBlank(message = "疫苗分类不能为空", groups = { AddGroup.class, EditGroup.class })
    private String category;

    /**
     * 疫苗详情
     */
    @NotBlank(message = "疫苗详情不能为空", groups = { AddGroup.class, EditGroup.class })
    private String detail;

    /**
     * 疫苗图片地址
     */
    @NotBlank(message = "疫苗图片地址不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;


}