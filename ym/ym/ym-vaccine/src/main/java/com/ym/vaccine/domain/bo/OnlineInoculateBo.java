package com.ym.vaccine.domain.bo;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

/**
 * 在线接种业务对象
 *
 * @author supanpan
 * @date 2024/02/20
 */
@Data
public class OnlineInoculateBo implements Serializable {
    /**
     * 订单id
     */
    private String orderId;
    /**
     * 接种部位
     */
    private String part;

    /**
     * 接种时间
     */
    private Date inoculateTime;
}
