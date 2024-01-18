package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗类型，存储疫苗的类型信息对象 ym_vaccine_type
 *
 * @author ym
 * @date 2024-01-17
 */
@Data
@TableName("ym_vaccine_type")
public class YmVaccineType  {

    private static final long serialVersionUID=1L;

    /**
     * 类型id
     */
    @TableId(value = "type_id")
    private Long typeId;
    /**
     * 疫苗类型名称
     */
    private String typeName;

}
