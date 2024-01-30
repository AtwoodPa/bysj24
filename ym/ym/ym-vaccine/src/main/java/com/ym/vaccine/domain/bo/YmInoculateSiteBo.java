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
 * 疫苗接种站点管理业务对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-01-29
 */

@Data
public class YmInoculateSiteBo implements Serializable {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     *
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String name;


    /**
     *
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String address;

    /**
     *
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;


}
