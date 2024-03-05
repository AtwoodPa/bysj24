package com.house.core.domain.vo;

import java.math.BigDecimal;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 出租管理视图对象 house_user
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class HouseUserVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 房源id
     */
    @ExcelProperty(value = "房源id")
    private Long houseId;

    /**
     * 用户id
     */
    @ExcelProperty(value = "用户id")
    private Long userId;

    /**
     * 发布人id(房东id)
     */
    @ExcelProperty(value = "发布人id(房东id)")
    private Long publishId;

    /**
     * 实际价格
     */
    @ExcelProperty(value = "实际价格")
    private BigDecimal actualPrice;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    @ExcelProperty(value = "0：待出租, 1：已出租, 2:下架")
    private Long state;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String remark;


}
