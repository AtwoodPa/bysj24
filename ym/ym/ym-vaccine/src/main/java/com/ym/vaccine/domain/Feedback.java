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
 * 用户反馈管理对象 feedback
 *
 * @author ym
 * @date 2024-02-24
 */
@Data
@TableName("feedback")
public class Feedback implements Serializable {

    private static final long serialVersionUID=1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     *
     */
    private String userid;
    /**
     *
     */
    private Date submittime;
    /**
     *
     */
    private String message;
    /**
     *
     */
    private Date backtime;
    /**
     *
     */
    private String backmessage;

}
