package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 接种记录，存储用户接种记录业务对象 ym_vaccination_record
 *
 * @author ym
 * @date 2024-01-18
 */

@Data
public class YmVaccinationRecordBo  {

    /**
     * 记录id
     */
    @NotNull(message = "记录id不能为空", groups = { EditGroup.class })
    private Long recordId;

    /**
     * 用户id
     */
    @NotNull(message = "用户id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long userId;

    /**
     * 疫苗id
     */
    @NotNull(message = "疫苗id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long vaccineId;


}
