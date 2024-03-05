package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.house.common.core.domain.BaseEntity;

/**
 * 用户反馈管理业务对象 cms_feedback
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class CmsFeedbackBo extends BaseEntity {

    /**
     * id
     */
    @NotNull(message = "id不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 类别
     */
    @NotBlank(message = "类别不能为空", groups = { AddGroup.class, EditGroup.class })
    private String feedType;

    /**
     * 标题
     */
    @NotBlank(message = "标题不能为空", groups = { AddGroup.class, EditGroup.class })
    private String feedTitle;

    /**
     * 详情
     */
    @NotBlank(message = "详情不能为空", groups = { AddGroup.class, EditGroup.class })
    private String feedContent;

    /**
     * 备注
     */
    @NotBlank(message = "备注不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;


}
