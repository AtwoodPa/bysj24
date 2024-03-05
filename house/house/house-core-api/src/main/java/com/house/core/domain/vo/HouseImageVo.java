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
 * 房源图片视图对象 house_image
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class HouseImageVo implements Serializable {

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
     * 图片名称
     */
    @ExcelProperty(value = "图片名称")
    private String imageName;

    /**
     * 图片路径
     */
    @ExcelProperty(value = "图片路径")
    private String imagePath;

    /**
     * 图片url
     */
    @ExcelProperty(value = "图片url")
    private String imgUrl;

    /**
     * 图片大小
     */
    @ExcelProperty(value = "图片大小")
    private BigDecimal imageSize;


}
