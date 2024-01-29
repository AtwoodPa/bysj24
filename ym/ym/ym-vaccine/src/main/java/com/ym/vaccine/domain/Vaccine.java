package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗信息对象 ym_vaccine
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_vaccine")
public class Vaccine implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 疫苗id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 疫苗名称
     */
    private String name;
    /**
     * 疫苗价格
     */
    private Long price;
    /**
     * 疫苗厂家
     */
    private String manufacturer;
    /**
     * 疫苗分类
     */
    private String category;
    /**
     * 疫苗详情
     */
    private String detail;
    /**
     * 疫苗图片地址
     */
    private String imgUrl;

}
