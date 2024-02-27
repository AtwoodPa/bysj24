package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.domain.BaseEntity;

/**
 * 存储疫苗知识信息的对象 ym_vaccine_knowledge
 *
 * @author ym
 * @date 2024-02-25
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ym_vaccine_knowledge")
public class YmVaccineKnowledge extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 唯一标识每一条疫苗知识记录的自增ID
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 疫苗知识的标题
     */
    private String title;
    /**
     * 接种该疫苗的好处
     */
    private String benefits;
    /**
     * 接种该疫苗前需要注意的事项
     */
    private String instructions;
    /**
     * 疫苗知识的发布时间
     */
    private Date publishTime;
    /**
     * 发布疫苗知识的用户或管理员的姓名或标识符
     */
    private String publisher;
    /**
     * 详细描述疫苗知识的文本
     */
    private String knowledge;
    /**
     * 封面图片的URL或路径
     */
    private String coverImage;

}
