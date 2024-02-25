package com.ym.common.core.domain.model;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * 用户注册对象
 *
 * @author PP
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class RegisterBody extends LoginBody {

    /**
     * 用户类型 （sys_user系统用户、ym_doctor医生、ym_user疫苗用户）
     *
     */
    private String userType;
    /**
     * 家庭住址
     */
    private String address;

    private String sex;

}
