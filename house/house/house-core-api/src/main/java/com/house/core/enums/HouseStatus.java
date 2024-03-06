package com.house.core.enums;

/**
 * 房源状态
 * 0待审核 1待出租 2已出租 3已下架
 *
 * @author panpan
 */
public enum HouseStatus {
    AUDIT(0L, "待审核"),
    SALEING(1L, "待出租"),
    SALEED(2L, "已出租"),
    CLOSE(3L, "已下架");
    private final Long code;
    private final String info;

    HouseStatus(Long code, String info) {
        this.code = code;
        this.info = info;
    }

    public Long getCode() {
        return code;
    }

    public String getInfo() {
        return info;
    }
}