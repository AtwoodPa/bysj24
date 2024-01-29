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
     * 
     */
    @ExcelProperty(value = "")
    private String username;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String password;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String realName;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String cardId;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String phone;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long inoculateSiteId;


}
