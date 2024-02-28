package com.ym.vaccine.domain.vo;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 存储疫苗知识信息的视图对象 ym_vaccine_knowledge
 *
 * @author ym
 * @date 2024-02-25
 */
@Data
@ExcelIgnoreUnannotated
public class YmVaccineKnowledgeVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 唯一标识每一条疫苗知识记录的自增ID
     */
    @ExcelProperty(value = "唯一标识每一条疫苗知识记录的自增ID")
    private Long id;

    /**
     * 疫苗知识的标题
     */
    @ExcelProperty(value = "疫苗知识的标题")
    private String title;

    /**
     * 接种该疫苗的好处
     */
    @ExcelProperty(value = "接种该疫苗的好处")
    private String benefits;

    /**
     * 接种该疫苗前需要注意的事项
     */
    @ExcelProperty(value = "接种该疫苗前需要注意的事项")
    private String instructions;

    /**
     * 疫苗知识的发布时间
     */
    @ExcelProperty(value = "疫苗知识的发布时间")
    private Date publishTime;

    /**
     * 发布疫苗知识的用户或管理员的姓名或标识符
     */
    @ExcelProperty(value = "发布疫苗知识的用户或管理员的姓名或标识符")
    private String publisher;

    /**
     * 详细描述疫苗知识的文本
     */
    @ExcelProperty(value = "详细描述疫苗知识的文本")
    private String knowledge;


}
