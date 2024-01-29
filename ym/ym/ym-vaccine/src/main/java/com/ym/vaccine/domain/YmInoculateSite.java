package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗接种站点管理对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@EqualsAndHashCode(callSuper = true)
@TableName("ym_inoculate_site")
public class YmInoculateSite extends BaseEntity {

    private static final long serialVersionUID=1L;

    /**
     * 
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 
     */
    private String name;
    /**
     * 
     */
    private String provinceCode;
    /**
     * 
     */
    private String cityCode;
    /**
     * 
     */
    private String districtCode;
    /**
     * 
     */
    private String address;
    /**
     * 
     */
    private String imgUrl;

}