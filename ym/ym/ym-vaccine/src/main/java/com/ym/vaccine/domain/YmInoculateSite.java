package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.Data;
import lombok.EqualsAndHashCode;


import com.ym.common.core.domain.BaseEntity;

import java.io.Serializable;

/**
 * 疫苗接种站点管理对象 ym_inoculate_site
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
//@EqualsAndHashCode(callSuper = true)
@TableName("ym_inoculate_site")
public class YmInoculateSite implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 站点名称
     */
    private String name;
    /**
     * 站点地址
     */
    private String address;
    /**
     * 站点图片
     */
    private String imgUrl;
    /**
     * 联系方式
     */
    private String contact;

}
