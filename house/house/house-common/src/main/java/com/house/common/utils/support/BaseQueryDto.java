package com.house.common.utils.support;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.*;
import lombok.experimental.SuperBuilder;

@Getter
@Setter
@ToString
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class BaseQueryDto {
    private int pageNo;
    private int pageSize;

    public int offset() {
        return pageNo <= 1 ? 0 : (pageNo - 1) * pageSize;
    }

    public int limit() {
        return pageSize;
    }
}
