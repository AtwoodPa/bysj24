package com.house.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.house.common.core.domain.BaseEntity;

/**
 * 文章内容管理对象 cms_article
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("cms_article")
public class CmsArticle extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 类型
     */
    private String articleType;
    /**
     * 简短标题
     */
    private String smallTitle;
    /**
     * 完整标题
     */
    private String bigTitle;
    /**
     * 封面图
     */
    private String faceUrl;
    /**
     * 缩略图
     */
    private String faceThum;
    /**
     * 内容
     */
    private String articleContent;
    /**
     * 来源
     */
    private String articleSource;
    /**
     * 排序号
     */
    private Long sortNo;
    /**
     * 
     */
    private Long starNum;
    /**
     * 备注
     */
    private String remark;

}
