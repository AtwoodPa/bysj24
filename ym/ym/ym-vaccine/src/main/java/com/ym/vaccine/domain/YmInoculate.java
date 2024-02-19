package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

import com.ym.common.core.domain.BaseEntity;

/**
 * 疫苗接种记录对象 ym_inoculate
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
//@EqualsAndHashCode(callSuper = true)
@TableName("ym_inoculate")
public class YmInoculate implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 接种部位
     */
    private String part;
    /**
     * 预约信息
     */
    private Long appointId;
    /**
     * 疫苗信息
     */
    private Long vaccineId;
    /**
     * 医护信息
     */
    private Long userId;
    /**
     * 接种状态（已接种、未接种、已取消）
     */
    private Long status;
    /**
     * 备注
     */
    private String remark;
    /**
     * 接种时间
     */
    private Date inoculateTime;

}
