package com.house.core.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 用户反馈管理视图对象 cms_feedback
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class CmsFeedbackVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * id
     */
    @ExcelProperty(value = "id")
    private Long id;

    /**
     * 类别
     */
    @ExcelProperty(value = "类别")
    private String feedType;

    /**
     * 标题
     */
    @ExcelProperty(value = "标题")
    private String feedTitle;

    /**
     * 详情
     */
    @ExcelProperty(value = "详情")
    private String feedContent;

    /**
     * 备注
     */
    @ExcelProperty(value = "备注")
    private String remark;


}
