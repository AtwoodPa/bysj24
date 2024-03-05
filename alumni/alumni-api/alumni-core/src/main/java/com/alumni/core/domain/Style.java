package com.alumni.core.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;
import java.io.Serializable;
import java.util.Date;
import java.math.BigDecimal;

import com.alumni.common.core.domain.BaseEntity;

/**
 * 校友风采管理对象 style
 *
 * @author alumni
 * @date 2024-03-03
 */
@Data
@TableName("style")
public class Style implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     * 主键ID
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 校友姓名
     */
    private String name;
    /**
     * 校友描述
     */
    private String descs;
    /**
     * 图片URL
     */
    private String imgUrl;

    private Date createTime;

}
