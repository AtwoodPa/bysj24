package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.ym.common.core.domain.BaseEntity;

/**
 * 留观查询对象 ym_observe
 *
 * @author ym
 * @date 2024-01-29
 */
@Data
@TableName("ym_observe")
public class YmObserve implements Serializable {

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
    /**
     *
     */
    private Long isFinish;
    /**
     *
     */
    private String note;
    /**
     *
     */
    private Date endTime;

}
