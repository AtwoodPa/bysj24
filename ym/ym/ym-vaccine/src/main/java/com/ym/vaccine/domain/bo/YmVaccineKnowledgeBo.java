package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.domain.BaseEntity;

/**
 * 存储疫苗知识信息的业务对象 ym_vaccine_knowledge
 *
 * @author ym
 * @date 2024-02-25
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class YmVaccineKnowledgeBo extends BaseEntity {

    /**
     * 唯一标识每一条疫苗知识记录的自增ID
     */
    @NotNull(message = "唯一标识每一条疫苗知识记录的自增ID不能为空", groups = { EditGroup.class })
    private Long ID;

    /**
     * 疫苗知识的标题
     */
    @NotBlank(message = "疫苗知识的标题不能为空", groups = { AddGroup.class, EditGroup.class })
    private String Title;

    /**
     * 接种该疫苗的好处
     */
    @NotBlank(message = "接种该疫苗的好处不能为空", groups = { AddGroup.class, EditGroup.class })
    private String Benefits;

    /**
     * 接种该疫苗前需要注意的事项
     */
    @NotBlank(message = "接种该疫苗前需要注意的事项不能为空", groups = { AddGroup.class, EditGroup.class })
    private String Instructions;

    /**
     * 疫苗知识的发布时间
     */
    @NotNull(message = "疫苗知识的发布时间不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date PublishTime;

    /**
     * 发布疫苗知识的用户或管理员的姓名或标识符
     */
    @NotBlank(message = "发布疫苗知识的用户或管理员的姓名或标识符不能为空", groups = { AddGroup.class, EditGroup.class })
    private String Publisher;

    /**
     * 详细描述疫苗知识的文本
     */
    @NotBlank(message = "详细描述疫苗知识的文本不能为空", groups = { AddGroup.class, EditGroup.class })
    private String Knowledge;

    /**
     * 封面图片的URL或路径
     */
    @NotBlank(message = "封面图片的URL或路径不能为空", groups = { AddGroup.class, EditGroup.class })
    private String CoverImage;


}
