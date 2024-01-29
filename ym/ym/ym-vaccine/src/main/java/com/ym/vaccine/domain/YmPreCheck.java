package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 预检信息查询对象 ym_pre_check
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ym_pre_check")
public class YmPreCheck extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 
     */
    private Long isMedicine;
    /**
     * 
     */
    private String medicine;
    /**
     * 
     */
    private Long isContraindication;
    /**
     * 
     */
    private String contraindication;
    /**
     * 
     */
    private Long bloodPressureHigh;
    /**
     * 
     */
    private Long bloodPressureLow;
    /**
     * 
     */
    private Long temperature;
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