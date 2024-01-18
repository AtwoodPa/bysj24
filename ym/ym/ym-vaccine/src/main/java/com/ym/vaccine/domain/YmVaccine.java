package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗，存储疫苗信息对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@TableName("ym_vaccine")
public class YmVaccine {

    private static final long serialVersionUID=1L;

    /**
     * 疫苗id
     */
    @TableId(value = "vaccine_id")
    private Long vaccineId;
    /**
     * 疫苗名称
     */
    private String vaccineName;
    /**
     * 疫苗类型id
     */
    private Long typeId;
    /**
     * 疫苗厂家id
     */
    private Long manufacturerId;
    /**
     * 疫苗信息描述
     */
    private String description;

}
