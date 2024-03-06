package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import com.house.core.domain.HouseFeature;
import com.house.core.domain.HouseImage;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.io.Serializable;
import java.util.Date;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.house.common.core.domain.BaseEntity;

/**
 * 房源管理业务对象 house_room
 *
 * @author house
 * @date 2024-03-05
 */

@Data
public class HouseRoomBo implements Serializable {

    /**
     * 
     */
    private Long id;

    /**
     * 租房类型：0整租/1合租
     */
    private Long type;

    /**
     * 居室
     */
    private String houseNum;

    /**
     * 卫生间
     */
    private String toiletNum;

    /**
     * 整套面积
     */
    private BigDecimal houseArea;

    /**
     * 1主卧,2次卧
     */
    private Long roomType;

    /**
     * 房间号
     */
    private String roomCode;

    /**
     * 房屋面积
     */
    private Long roomArea;

    /**
     * 朝向
     */
    private String direction;

    /**
     * 租金
     */
    private BigDecimal price;

    /**
     * 楼层
     */
    private String floor;

    /**
     * 楼房类型
     */
    private String stepType;

    /**
     * 起租日期
     */
    private Date startDate;

    /**
     * 房源描述
     */
    private String introduce;

    /**
     * 房东姓名
     */
    private String ownerName;

    private List<HouseImage> imageList;

    private List<HouseFeature> featureList;
    /**
     * 房东电话
     */
    private String owerPhone;

    /**
     * 小区id
     */
    private Long villageId;

    /**
     * 小区名称
     */
    private String villageName;

    /**
     * 小区所在城市
     */
    private String villageCity;

    /**
     * 具体地址
     */
    private String address;

    /**
     * 房牌号
     */
    private String houseNo;

    /**
     * 付款方式
     */
    private String payType;

    /**
     * 发布人id
     */
    private Long publishId;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    private Long state;

    /**
     * 
     */
    private String createName;

    /**
     * 
     */
    private String updateName;

    /**
     * 
     */
    private String remark;

    /**
     * 客厅数量
     */
    private String houseHall;

    /**
     * 房源编号
     */
    private String code;

    /**
     * 封面图
     */
    private String faceUrl;

    /**
     * 装修情况
     */
    private String decoration;

    /**
     * 经纪人姓名
     */
    private String agentName;

    /**
     * 经纪人电话
     */
    private String agentPhone;

    /**
     * 经纪人id
     */
    private Long agentUserId;

    /**
     * 经纪人头像
     */
    private String agentAvatar;


}
