package com.ym.vaccine.domain.vo;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableField;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

import java.io.Serializable;

/**
 * 预约视图对象 ym_appoint
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@ExcelIgnoreUnannotated
public class YmAppointVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;
    /**
     * 预约用户id
     */
    private Long userId;
    /**
     * 预约日期
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    @TableField("appoint_date")
    private Date appointDate;
    /**
     * 上午 or 下午
     */
    private String timeSlot;
    /**
     * 预约状态（待支付、已支付、已接种）
     */
    private Long status;

    /**
     * 接种站点id
     */
    private Long inoculateSiteId;

    /**
     * 疫苗id
     */
    private Long vaccineId;

    /**
     * 第几针
     */
    private String whichPin;

    /**
     * 签到时间
     */
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    @TableField("create_time")
    private Date createTime;


}
