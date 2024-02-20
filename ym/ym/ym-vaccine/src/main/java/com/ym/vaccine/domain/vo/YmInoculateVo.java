package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;

import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗接种记录视图对象 ym_inoculate
 *
 * @author ym
 * @date 2024-02-19
 */
@Data
@ExcelIgnoreUnannotated
public class YmInoculateVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     *
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 接种部位
     */
    @ExcelProperty(value = "接种部位")
    private String part;

    /**
     * 预约信息
     */
    @ExcelProperty(value = "预约信息")
    private Long appointId;

    /**
     * 接种点名称
     */
    private String inoculateSiteName;

    /**
     * 记录创建时间
     */
    @ExcelProperty(value = "记录创建时间")
    private Date createTime;

    /**
     * 疫苗信息
     */
    @ExcelProperty(value = "疫苗信息")
    private Long vaccineId;
    /**
     * 疫苗名称
     */
    private String vaccineName;
    /**
     * 疫苗批号
     */
    @ExcelProperty(value = "疫苗批号")
    private String batchNumber;

    /**
     * 接种者信息
     */
    @ExcelProperty(value = "医护信息")
    private Long userId;
    /**
     * 接种者姓名
     */
    private String nickName;
    /**
     * 医护人员姓名
     */
    private String workName;


    /**
     * 接种状态（已接种、未接种、已取消）
     */
    @ExcelProperty(value = "接种状态", converter = ExcelDictConvert.class)
    @ExcelDictFormat(readConverterExp = "已=接种、未接种、已取消")
    private Long status;

    /**
     * 备注
     */
    @ExcelProperty(value = "备注")
    private String remark;

    /**
     * 接种时间
     */
    @ExcelProperty(value = "接种时间")
    private Date inoculateTime;


}
