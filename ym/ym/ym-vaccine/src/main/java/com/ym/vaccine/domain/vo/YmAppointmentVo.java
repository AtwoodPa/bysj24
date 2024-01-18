package com.ym.vaccine.domain.vo;

import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.ym.common.annotation.ExcelDictFormat;
import com.ym.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 疫苗预约，存储用户预约信息视图对象 ym_appointment
 *
 * @author ym
 * @date 2024-01-18
 */
@Data
@ExcelIgnoreUnannotated
public class YmAppointmentVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long appointmentId;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long userId;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long vaccineId;

    /**
     * 预约状态（0_Booked 1_Pending 2_Completed）
     */
    @ExcelProperty(value = "预约状态", converter = ExcelDictConvert.class)
    @ExcelDictFormat(readConverterExp = "0=_Booked,1=_Pending,2=_Completed")
    private Long status;


}
