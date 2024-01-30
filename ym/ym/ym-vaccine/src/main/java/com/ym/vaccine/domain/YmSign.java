package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.ym.common.core.domain.BaseEntity;

/**
 * 接种签到对象 ym_sign
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_sign")
public class YmSign implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     *
     */
    private Long workerId;
    /**
     *
     */
    private Long appointId;

}
