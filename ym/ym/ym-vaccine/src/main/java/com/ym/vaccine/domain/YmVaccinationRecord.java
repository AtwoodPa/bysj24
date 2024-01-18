package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 接种记录，存储用户接种记录对象 ym_vaccination_record
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@TableName("ym_vaccination_record")
public class YmVaccinationRecord  {

    private static final long serialVersionUID=1L;

    /**
     * 记录id
     */
    @TableId(value = "record_id")
    private Long recordId;
    /**
     * 用户id
     */
    private Long userId;
    /**
     * 疫苗id
     */
    private Long vaccineId;
    /**
     * 创建时间
     */
    @TableField(fill = FieldFill.INSERT)
    private Date createTime;

    /**
     * 更新时间
     */
    @TableField(fill = FieldFill.INSERT_UPDATE)
    private Date updateTime;

}
