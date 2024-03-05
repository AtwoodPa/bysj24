package com.house.core.domain.vo;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.house.common.annotation.ExcelDictFormat;
import com.house.common.convert.ExcelDictConvert;
import lombok.Data;
import java.util.Date;

import java.io.Serializable;

/**
 * 房源管理视图对象 house_room
 *
 * @author house
 * @date 2024-03-05
 */
@Data
@ExcelIgnoreUnannotated
public class HouseRoomVo implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private Long id;

    /**
     * 0整租/1合租
     */
    @ExcelProperty(value = "0整租/1合租")
    private Long type;

    /**
     * 居室
     */
    @ExcelProperty(value = "居室")
    private String houseNum;

    /**
     * 卫生间
     */
    @ExcelProperty(value = "卫生间")
    private String toiletNum;

    /**
     * 整套面积
     */
    @ExcelProperty(value = "整套面积")
    private BigDecimal houseArea;

    /**
     * 1主卧,2次卧
     */
    @ExcelProperty(value = "1主卧,2次卧")
    private Long roomType;

    /**
     * 房间号
     */
    @ExcelProperty(value = "房间号")
    private String roomCode;

    /**
     * 房屋面积
     */
    @ExcelProperty(value = "房屋面积")
    private Long roomArea;

    /**
     * 朝向
     */
    @ExcelProperty(value = "朝向")
    private String direction;

    /**
     * 租金
     */
    @ExcelProperty(value = "租金")
    private BigDecimal price;

    /**
     * 楼层
     */
    @ExcelProperty(value = "楼层")
    private String floor;

    /**
     * 楼房类型
     */
    @ExcelProperty(value = "楼房类型")
    private String stepType;

    /**
     * 起租日期
     */
    @ExcelProperty(value = "起租日期")
    private Date startDate;

    /**
     * 房源描述
     */
    @ExcelProperty(value = "房源描述")
    private String introduce;

    /**
     * 房东姓名
     */
    @ExcelProperty(value = "房东姓名")
    private String ownerName;

    /**
     * 房东电话
     */
    @ExcelProperty(value = "房东电话")
    private String owerPhone;

    /**
     * 小区id
     */
    @ExcelProperty(value = "小区id")
    private Long villageId;

    /**
     * 小区名称
     */
    @ExcelProperty(value = "小区名称")
    private String villageName;

    /**
     * 具体地址
     */
    @ExcelProperty(value = "具体地址")
    private String address;

    /**
     * 房牌号
     */
    @ExcelProperty(value = "房牌号")
    private String houseNo;

    /**
     * 付款方式
     */
    @ExcelProperty(value = "付款方式")
    private String payType;

    /**
     * 发布人id
     */
    @ExcelProperty(value = "发布人id")
    private Long publishId;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    @ExcelProperty(value = "0：待出租, 1：已出租, 2:下架")
    private Long state;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String createName;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String updateName;

    /**
     * 
     */
    @ExcelProperty(value = "")
    private String remark;

    /**
     * 客厅数量
     */
    @ExcelProperty(value = "客厅数量")
    private String houseHall;

    /**
     * 房源编号
     */
    @ExcelProperty(value = "房源编号")
    private String code;

    /**
     * 封面图
     */
    @ExcelProperty(value = "封面图")
    private String faceUrl;

    /**
     * 装修情况
     */
    @ExcelProperty(value = "装修情况")
    private String decoration;

    /**
     * 经纪人姓名
     */
    @ExcelProperty(value = "经纪人姓名")
    private String agentName;

    /**
     * 经纪人电话
     */
    @ExcelProperty(value = "经纪人电话")
    private String agentPhone;

    /**
     * 经纪人id
     */
    @ExcelProperty(value = "经纪人id")
    private Long agentUserId;

    /**
     * 经纪人头像
     */
    @ExcelProperty(value = "经纪人头像")
    private String agentAvatar;


}
