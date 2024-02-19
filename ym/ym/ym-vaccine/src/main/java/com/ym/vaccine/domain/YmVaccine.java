package com.ym.vaccine.domain;

import com.baomidou.mybatisplus.annotation.*;
import com.ym.common.core.domain.BaseEntity;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * 疫苗信息管理对象 ym_vaccine
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
//@EqualsAndHashCode(callSuper = true)
@TableName("ym_vaccine")
public class YmVaccine implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 疫苗id
     */
    @TableId(value = "id")
    private Long id;
    /**
     * 疫苗名称
     */
    private String name;
    /**
     * 疫苗价格
     */
    private Long price;
    /**
     * 疫苗库存
     */
    private Long amount;
    /**
     * 疫苗厂家
     */
    private String manufacturer;
    /**
     * 疫苗分类
     */
    private String category;
    /**
     * 疫苗批号
     */
    private String batchNumber;
    /**
     * 疫苗详情
     */
    private String detail;
    /**
     * 疫苗图片地址
     */
    private String imgUrl;

}
