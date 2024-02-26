package com.ym.vaccine.domain.bo;

import com.ym.common.core.validate.AddGroup;
import com.ym.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗出入库业务对象 ym_vaccine_stock
 *
 * @author ym
 * @date 2024-02-25
 */

@Data
public class YmVaccineStockBo implements Serializable {
    private Long id;

    /**
     * 医院ID
     */
    @NotNull(message = "医院ID不能为空", groups = { EditGroup.class })
    private Long siteId;

    /**
     * 疫苗ID
     */
    @NotNull(message = "疫苗ID不能为空", groups = { EditGroup.class })
    private Long vaccineId;

    /**
     * 疫苗库存
     */
    @NotNull(message = "疫苗库存不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long siteAmount;


}
