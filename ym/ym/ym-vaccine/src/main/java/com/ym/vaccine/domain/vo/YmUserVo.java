package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗预约用户视图对象 ym_user
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmUserVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 疫苗用户id
     */
    @ExcelProperty(value = "疫苗用户id")
    private Long id;

    /**
     * 疫苗用户名
     */
    @ExcelProperty(value = "疫苗用户名")
    private String username;

    /**
     * 疫苗用户密码
     */
    @ExcelProperty(value = "疫苗用户密码")
    private String password;

    /**
     * 疫苗用户真实姓名
     */
    @ExcelProperty(value = "疫苗用户真实姓名")
    private String realName;

    /**
     * 疫苗用户身份证号
     */
    @ExcelProperty(value = "疫苗用户身份证号")
    private String cardId;

    /**
     * 疫苗用户手机号
     */
    @ExcelProperty(value = "疫苗用户手机号")
    private String phone;

    /**
     * 疫苗用户地址
     */
    @ExcelProperty(value = "疫苗用户地址")
    private String address;

    /**
     * 疫苗用户所在地区编码
     */
    @ExcelProperty(value = "疫苗用户所在地区编码")
    private String districtCode;


}
