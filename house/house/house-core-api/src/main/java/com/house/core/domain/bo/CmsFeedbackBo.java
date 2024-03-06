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
 * 用户反馈管理业务对象 cms_feedback
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class CmsFeedbackBo implements Serializable {

    /**
     * id
     */
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
