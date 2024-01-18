package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 接种记录，存储用户接种记录视图对象 ym_vaccination_record
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@ExcelIgnoreUnannotated
public class YmVaccinationRecordVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 记录id
     */
    @ExcelProperty(value = "记录id")
    private Long recordId;

    /**
     * 用户id
     */
    @ExcelProperty(value = "用户id")
    private Long userId;

    /**
     * 疫苗id
     */
    @ExcelProperty(value = "疫苗id")
    private Long vaccineId;


}
