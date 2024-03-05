package com.alumni.core.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alumni.common.annotation.ExcelDictFormat;
import com.alumni.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 新闻动态管理视图对象 news
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@ExcelIgnoreUnannotated
public class NewsVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 主键ID
     */
    @ExcelProperty(value = "主键ID")
    private Long id;

    /**
     * 新闻标题
     */
    @ExcelProperty(value = "新闻标题")
    private String title;

    /**
     * 作者
     */
    @ExcelProperty(value = "作者")
    private String author;

    /**
     * 创建时间
     */
    @ExcelProperty(value = "创建时间")
    private Date createTime;

    /**
     * 新闻内容
     */
    @ExcelProperty(value = "新闻内容")
    private String content;

    /**
     * 图片URL
     */
    @ExcelProperty(value = "图片URL")
    private String imgUrl;


}
