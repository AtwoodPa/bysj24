package com.house.core.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 文章内容管理视图对象 cms_article
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class CmsArticleVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ExcelProperty(value = "id")
    private Long id;

    /**
     * 类型
     */
    @ExcelProperty(value = "类型")
    private String articleType;

    /**
     * 简短标题
     */
    @ExcelProperty(value = "简短标题")
    private String smallTitle;

    /**
     * 完整标题
     */
    @ExcelProperty(value = "完整标题")
    private String bigTitle;

    /**
     * 封面图
     */
    @ExcelProperty(value = "封面图")
    private String faceUrl;

    /**
     * 缩略图
     */
    @ExcelProperty(value = "缩略图")
    private String faceThum;

    /**
     * 内容
     */
    @ExcelProperty(value = "内容")
    private String articleContent;

    /**
     * 来源
     */
    @ExcelProperty(value = "来源")
    private String articleSource;

    /**
     * 排序号
     */
    @ExcelProperty(value = "排序号")
    private Long sortNo;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long starNum;

    /**
     * 备注
     */
    @ExcelProperty(value = "备注")
    private String remark;


}
