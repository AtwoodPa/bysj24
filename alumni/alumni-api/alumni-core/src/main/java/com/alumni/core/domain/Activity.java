package com.alumni.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alumni.common.core.domain.BaseEntity;

/**
 * 校友活动管理对象 activity
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@TableName("activity")
public class Activity implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 活动名称
     */
    private String name;
    /**
     * 活动地址
     */
    private String address;
    /**
     * 图片URL
     */
    private String imgUrl;
    /**
     * 活动描述
     */
    private String descs;
    /**
     * 活动开始时间
     */
    private Date startTime;
    /**
     * 活动结束时间
     */
    private Date endTime;

}
