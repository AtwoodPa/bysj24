package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;

import javax.validation.constraints.*;

import java.util.Date;


/**
 * 疫苗预约用户业务对象 ym_user
 *
 * @author ym
 * @date 2024-01-29
 */

@Data

public class YmUserBo  {

    /**
     * 疫苗用户id
     */
    @NotNull(message = "疫苗用户id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 疫苗用户名
     */
    @NotBlank(message = "疫苗用户名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String username;

    /**
     * 疫苗用户密码
     */
    @NotBlank(message = "疫苗用户密码不能为空", groups = { AddGroup.class, EditGroup.class })
    private String password;

    /**
     * 疫苗用户真实姓名
     */
    @NotBlank(message = "疫苗用户真实姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String realName;

    /**
     * 疫苗用户身份证号
     */
    @NotBlank(message = "疫苗用户身份证号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String cardId;

    /**
     * 疫苗用户手机号
     */
    @NotBlank(message = "疫苗用户手机号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String phone;

    /**
     * 疫苗用户地址
     */
    @NotBlank(message = "疫苗用户地址不能为空", groups = { AddGroup.class, EditGroup.class })
    private String address;

    /**
     * 疫苗用户所在地区编码
     */
    @NotBlank(message = "疫苗用户所在地区编码不能为空", groups = { AddGroup.class, EditGroup.class })
    private String districtCode;


}
