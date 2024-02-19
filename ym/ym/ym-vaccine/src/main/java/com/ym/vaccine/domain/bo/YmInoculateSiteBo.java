package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.*;


import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗接种站点管理业务对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-02-19
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class YmInoculateSiteBo extends BaseEntity {

    /**
     *
     */
    @NotNull(message = "不能为空", groups = {EditGroup.class})
    private Long id;

    /**
     * 站点名称
     */
    @NotBlank(message = "站点名称不能为空", groups = {AddGroup.class, EditGroup.class})
    private String name;

    /**
     * 站点地址
     */
    @NotBlank(message = "站点地址不能为空", groups = {AddGroup.class, EditGroup.class})
    private String address;

    /**
     * 站点图片
     */
    @NotBlank(message = "站点图片不能为空", groups = {AddGroup.class, EditGroup.class})
    private String imgUrl;

    /**
     * 联系方式
     */
    @NotBlank(message = "联系方式不能为空", groups = {AddGroup.class, EditGroup.class})
    private String contact;


}
