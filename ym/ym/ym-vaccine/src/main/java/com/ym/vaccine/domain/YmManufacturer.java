package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗厂家，存储疫苗厂家信息对象 ym_manufacturer
 *
 * @author ym
 * @date 2024-01-17
 */
@Data
@TableName("ym_manufacturer")
public class YmManufacturer {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "manufacturer_id")
    private Long manufacturerId;
    /**
     *
     */
    private String facturerName;
    /**
     *
     */
    private String address;
    /**
     * 厂家信息描述
     */
    private String description;

}
