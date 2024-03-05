package com.alumni.core.domain.bo;

import com.alumni.common.core.validate.AddGroup;
import com.alumni.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.alumni.common.core.domain.BaseEntity;

/**
 * 新闻动态管理业务对象 news
 *
 * @author alumni
 * @date 2024-03-03
 */

@Data
public class NewsBo implements Serializable {

    /**
     * 主键ID
     */
    @NotNull(message = "主键ID不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 新闻标题
     */
    @NotBlank(message = "新闻标题不能为空", groups = { AddGroup.class, EditGroup.class })
    private String title;

    /**
     * 作者
     */
    @NotBlank(message = "作者不能为空", groups = { AddGroup.class, EditGroup.class })
    private String author;

    /**
     * 新闻内容
     */
    @NotBlank(message = "新闻内容不能为空", groups = { AddGroup.class, EditGroup.class })
    private String content;

    /**
     * 图片URL
     */
    @NotBlank(message = "图片URL不能为空", groups = { AddGroup.class, EditGroup.class })
    private String imgUrl;

    private Date createTime;

}
