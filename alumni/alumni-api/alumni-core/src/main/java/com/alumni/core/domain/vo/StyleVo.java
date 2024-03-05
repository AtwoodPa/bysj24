package com.alumni.core.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alumni.common.annotation.ExcelDictFormat;
import com.alumni.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 校友风采管理视图对象 style
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@ExcelIgnoreUnannotated
public class StyleVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @ExcelProperty(value = "主键ID")
    private Long id;

    /**
     * 校友姓名
     */
    @ExcelProperty(value = "校友姓名")
    private String name;

    /**
     * 校友描述
     */
    @ExcelProperty(value = "校友描述")
    private String descs;

    /**
     * 创建时间
     */
    @ExcelProperty(value = "创建时间")
    private Date createTime;

    /**
     * 图片URL
     */
    @ExcelProperty(value = "图片URL")
    private String imgUrl;


}
