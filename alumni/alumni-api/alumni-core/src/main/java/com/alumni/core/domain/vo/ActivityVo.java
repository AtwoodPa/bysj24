package com.alumni.core.domain.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alumni.common.annotation.ExcelDictFormat;
import com.alumni.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 校友活动管理视图对象 activity
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@ExcelIgnoreUnannotated
public class ActivityVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @ExcelProperty(value = "主键ID")
    private Long id;

    /**
     * 活动名称
     */
    @ExcelProperty(value = "活动名称")
    private String name;

    /**
     * 活动地址
     */
    @ExcelProperty(value = "活动地址")
    private String address;

    /**
     * 图片URL
     */
    @ExcelProperty(value = "图片URL")
    private String imgUrl;

    /**
     * 活动描述
     */
    @ExcelProperty(value = "活动描述")
    private String descs;

    /**
     * 活动开始时间
     */
    @ExcelProperty(value = "活动开始时间")
    private Date startTime;

    /**
     * 活动结束时间
     */
    @ExcelProperty(value = "活动结束时间")
    private Date endTime;


}
