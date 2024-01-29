package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗预约用户对象 ym_user
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_user")
public class YmUser implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 疫苗用户id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 疫苗用户名
     */
    private String username;
    /**
     * 疫苗用户密码
     */
    private String password;
    /**
     * 疫苗用户真实姓名
     */
    private String realName;
    /**
     * 疫苗用户身份证号
     */
    private String cardId;
    /**
     * 疫苗用户手机号
     */
    private String phone;
    /**
     * 疫苗用户地址
     */
    private String address;
    /**
     * 疫苗用户所在地区编码
     */
    private String districtCode;

}
