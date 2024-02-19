package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗接种记录视图对象 ym_inoculate
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmInoculateVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;
    /**
     * 接种部位
     */
    private String part;
    /**
     * 预约信息
     */
    private Long appointId;
    /**
     * 签到时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;

    /**
     * 疫苗信息
     */
    private Long vaccineId;
    /**
     * 用户信息
     */
    private Long userId;

    /**
     * 接种状态（已接种、未接种、已取消）
     */
    private Long status;

    /**
     * 备注
     */
    private String remark;

    /**
     * 接种时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date inoculateTime;

}
