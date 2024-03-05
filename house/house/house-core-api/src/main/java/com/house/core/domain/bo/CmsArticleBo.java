package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.house.common.core.domain.BaseEntity;

/**
 * 文章内容管理业务对象 cms_article
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class CmsArticleBo extends BaseEntity {

    /**
     * id
     */
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 类型
     */
    @NotBlank(message = "类型不能为空", groups = { AddGroup.class, EditGroup.class })
    private String articleType;

    /**
     * 简短标题
     */
    @NotBlank(message = "简短标题不能为空", groups = { AddGroup.class, EditGroup.class })
    private String smallTitle;

    /**
     * 完整标题
     */
    @NotBlank(message = "完整标题不能为空", groups = { AddGroup.class, EditGroup.class })
    private String bigTitle;

    /**
     * 封面图
     */
    @NotBlank(message = "封面图不能为空", groups = { AddGroup.class, EditGroup.class })
    private String faceUrl;

    /**
     * 缩略图
     */
    @NotBlank(message = "缩略图不能为空", groups = { AddGroup.class, EditGroup.class })
    private String faceThum;

    /**
     * 内容
     */
    @NotBlank(message = "内容不能为空", groups = { AddGroup.class, EditGroup.class })
    private String articleContent;

    /**
     * 来源
     */
    @NotBlank(message = "来源不能为空", groups = { AddGroup.class, EditGroup.class })
    private String articleSource;

    /**
     * 排序号
     */
    @NotNull(message = "排序号不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long sortNo;

    /**
     * 
     */
    @NotNull(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long starNum;

    /**
     * 备注
     */
    @NotBlank(message = "备注不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;


}
