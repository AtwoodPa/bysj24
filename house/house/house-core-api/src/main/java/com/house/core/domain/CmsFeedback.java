package com.house.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.house.common.core.domain.BaseEntity;

/**
 * 用户反馈管理对象 cms_feedback
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("cms_feedback")
public class CmsFeedback extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 类别
     */
    private String feedType;
    /**
     * 标题
     */
    private String feedTitle;
    /**
     * 详情
     */
    private String feedContent;
    /**
     * 备注
     */
    private String remark;

}
