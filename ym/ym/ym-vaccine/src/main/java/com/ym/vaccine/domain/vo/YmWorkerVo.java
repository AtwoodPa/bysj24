package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 医护人员信息视图对象 ym_worker
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmWorkerVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 用户名
     */
    @ExcelProperty(value = "")
    private String username;

    /**
     * 密码
     */
    @ExcelProperty(value = "")
    private String password;

    /**
     * 真实姓名
     */
    @ExcelProperty(value = "")
    private String realName;

    /**
     * 身份证号
     */
    @ExcelProperty(value = "")
    private String cardId;

    /**
     * 联系方式
     */
    @ExcelProperty(value = "")
    private String phone;

    /**
     * 接种站点ID
     */
    @ExcelProperty(value = "")
    private Long inoculateSiteId;

    /**
     * 接种站点名称
     */
    private String inoculateSiteName;


}
