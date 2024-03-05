package com.alumni.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.alumni.common.core.domain.BaseEntity;

/**
 * 新闻动态管理对象 news
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@TableName("news")
public class News implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 新闻标题
     */
    private String title;
    /**
     * 作者
     */
    private String author;
    /**
     * 新闻内容
     */
    private String content;
    /**
     * 图片URL
     */
    private String imgUrl;

    private Date createTime;


}
