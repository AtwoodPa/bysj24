package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗接种记录对象 ym_inoculate
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ym_inoculate")
public class YmInoculate extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 
     */
    private String part;
    /**
     * 
     */
    private String vaccineBatchCode;
    /**
     * 
     */
    private Long workerId;
    /**
     * 
     */
    private Long appointId;
    /**
     * 
     */
    private String note;

}
