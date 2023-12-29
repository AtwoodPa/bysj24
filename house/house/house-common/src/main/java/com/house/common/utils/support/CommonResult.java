package com.house.common.utils.support;

import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.*;

/**
 * 通用返回结果
 *
 * @author supanpan
 * @date 2023/12/29
 */
@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@JsonInclude
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class CommonResult <T>{
    private int status;
    private String desc;
    private T data;

    public static <T> CommonResult<T> of(ActionStatus actionStatus, String desc, T data) {
        CommonResult<T> result = new CommonResult<>();
        result.setStatus(actionStatus.inValue());
        result.setDesc(desc);
        result.setData(data);
        return result;
    }

    public static <T> CommonResult<T> succeed() {
        return of(ActionStatus.NORMAL_RETURNED, ActionStatus.NORMAL_RETURNED.getDescription(), null);
    }

    public static <T> CommonResult<T> succeed(T data) {
        return of(ActionStatus.NORMAL_RETURNED, ActionStatus.NORMAL_RETURNED.getDescription(), data);
    }

    public static <T> CommonResult<T> failed(String desc) {

        return of(ActionStatus.SERVER_ERROR, desc, null);
    }

    public static <T> CommonResult<T> failedOnParams(String message) {
        return of(ActionStatus.PARAMAS_ERROR, message, null);
    }
}
