package com.house.core.domain.bo;

import com.house.common.core.validate.AddGroup;
import com.house.common.core.validate.EditGroup;
import lombok.Data;
import lombok.EqualsAndHashCode;
import javax.validation.constraints.*;

import java.util.Date;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.house.common.core.domain.BaseEntity;

/**
 * 房源管理业务对象 house_room
 *
 * @author house
 * @date 2024-03-05
 */

@Data
@EqualsAndHashCode(callSuper = true)
public class HouseRoomBo extends BaseEntity {

    /**
     * 
     */
    @NotNull(message = "不能为空", groups = { EditGroup.class })
    private Long id;

    /**
     * 0整租/1合租
     */
    @NotNull(message = "0整租/1合租不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long type;

    /**
     * 居室
     */
    @NotBlank(message = "居室不能为空", groups = { AddGroup.class, EditGroup.class })
    private String houseNum;

    /**
     * 卫生间
     */
    @NotBlank(message = "卫生间不能为空", groups = { AddGroup.class, EditGroup.class })
    private String toiletNum;

    /**
     * 整套面积
     */
    @NotNull(message = "整套面积不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal houseArea;

    /**
     * 1主卧,2次卧
     */
    @NotNull(message = "1主卧,2次卧不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long roomType;

    /**
     * 房间号
     */
    @NotBlank(message = "房间号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String roomCode;

    /**
     * 房屋面积
     */
    @NotNull(message = "房屋面积不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long roomArea;

    /**
     * 朝向
     */
    @NotBlank(message = "朝向不能为空", groups = { AddGroup.class, EditGroup.class })
    private String direction;

    /**
     * 租金
     */
    @NotNull(message = "租金不能为空", groups = { AddGroup.class, EditGroup.class })
    private BigDecimal price;

    /**
     * 楼层
     */
    @NotBlank(message = "楼层不能为空", groups = { AddGroup.class, EditGroup.class })
    private String floor;

    /**
     * 楼房类型
     */
    @NotBlank(message = "楼房类型不能为空", groups = { AddGroup.class, EditGroup.class })
    private String stepType;

    /**
     * 起租日期
     */
    @NotNull(message = "起租日期不能为空", groups = { AddGroup.class, EditGroup.class })
    private Date startDate;

    /**
     * 房源描述
     */
    @NotBlank(message = "房源描述不能为空", groups = { AddGroup.class, EditGroup.class })
    private String introduce;

    /**
     * 房东姓名
     */
    @NotBlank(message = "房东姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String ownerName;

    /**
     * 房东电话
     */
    @NotBlank(message = "房东电话不能为空", groups = { AddGroup.class, EditGroup.class })
    private String owerPhone;

    /**
     * 小区id
     */
    @NotNull(message = "小区id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long villageId;

    /**
     * 小区名称
     */
    @NotBlank(message = "小区名称不能为空", groups = { AddGroup.class, EditGroup.class })
    private String villageName;

    /**
     * 具体地址
     */
    @NotBlank(message = "具体地址不能为空", groups = { AddGroup.class, EditGroup.class })
    private String address;

    /**
     * 房牌号
     */
    @NotBlank(message = "房牌号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String houseNo;

    /**
     * 付款方式
     */
    @NotBlank(message = "付款方式不能为空", groups = { AddGroup.class, EditGroup.class })
    private String payType;

    /**
     * 发布人id
     */
    @NotNull(message = "发布人id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long publishId;

    /**
     * 0：待出租, 1：已出租, 2:下架
     */
    @NotNull(message = "0：待出租, 1：已出租, 2:下架不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long state;

    /**
     * 
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String createName;

    /**
     * 
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String updateName;

    /**
     * 
     */
    @NotBlank(message = "不能为空", groups = { AddGroup.class, EditGroup.class })
    private String remark;

    /**
     * 客厅数量
     */
    @NotBlank(message = "客厅数量不能为空", groups = { AddGroup.class, EditGroup.class })
    private String houseHall;

    /**
     * 房源编号
     */
    @NotBlank(message = "房源编号不能为空", groups = { AddGroup.class, EditGroup.class })
    private String code;

    /**
     * 封面图
     */
    @NotBlank(message = "封面图不能为空", groups = { AddGroup.class, EditGroup.class })
    private String faceUrl;

    /**
     * 装修情况
     */
    @NotBlank(message = "装修情况不能为空", groups = { AddGroup.class, EditGroup.class })
    private String decoration;

    /**
     * 经纪人姓名
     */
    @NotBlank(message = "经纪人姓名不能为空", groups = { AddGroup.class, EditGroup.class })
    private String agentName;

    /**
     * 经纪人电话
     */
    @NotBlank(message = "经纪人电话不能为空", groups = { AddGroup.class, EditGroup.class })
    private String agentPhone;

    /**
     * 经纪人id
     */
    @NotNull(message = "经纪人id不能为空", groups = { AddGroup.class, EditGroup.class })
    private Long agentUserId;

    /**
     * 经纪人头像
     */
    @NotBlank(message = "经纪人头像不能为空", groups = { AddGroup.class, EditGroup.class })
    private String agentAvatar;


}
