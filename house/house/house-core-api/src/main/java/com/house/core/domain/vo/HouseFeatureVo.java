package com.house.core.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 房源特色视图对象 house_feature
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class HouseFeatureVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 特色id
     */
    @ExcelProperty(value = "特色id")
    private Long id;

    /**
     * 房源id
     */
    @ExcelProperty(value = "房源id")
    private Long houseId;

    /**
     * 特色描述
     */
    @ExcelProperty(value = "特色描述")
    private String feature;


}
