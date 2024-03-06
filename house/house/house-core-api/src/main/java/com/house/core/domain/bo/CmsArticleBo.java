package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.house.common.core.domain.BaseEntity;

/**
 * 文章内容管理业务对象 cms_article
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class CmsArticleBo implements Serializable {

    /**
     * id
     */
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
