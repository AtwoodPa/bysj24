package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗出入库对象 ym_vaccine_stock
 *
 * @author ym
 * @date 2024-02-25
 */
@Data
@TableName("ym_vaccine_stock")
public class YmVaccineStock implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 医院ID
     */
    @TableId(value = "site_id")
    private Long siteId;
    /**
     * 疫苗ID
     */
//    @TableId(value = "vaccine_id")
    private Long vaccineId;
    /**
     * 疫苗库存
     */
    private Long siteAmount;

    private Date createTime;

}
