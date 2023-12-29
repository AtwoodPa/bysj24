package com.house.demo.domain.dto;

import com.house.demo.domain.Bean;
import lombok.*;


@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class UserQuery implements Bean {

    /**
     * 用户uid
     */
    private Long uid;
    /**
     * 用户手机号
     */
    private String phone;
    /**
     * 用户登录名
     */
    private String loginName;
    /**
     * 用户昵称
     */
    private String nickname;
    /**
     * 用户真实姓名
     */
    private String realName;
    /**
     * 用户设备Id
     */
    private String dfId;

    /**
     * 微信昵称
     */
    private String wechatNickname;
    /**
     * 微信账号
     */
    private String wechatAccount;
    /**
     * 微信unionId
     */
    private String wechatUnionId;

    /**
     * 支付宝账号
     */
    private String alipayAccount;

    /**
     * 注册时间查询起始时间
     */
    private Long createTimeMillisStart;
    /**
     * 注册时间查询截止时间
     */
    private Long createTimeMillisEnd;

}
