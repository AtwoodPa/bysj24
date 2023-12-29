package com.house.demo.domain.dto;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.*;
import lombok.experimental.SuperBuilder;
import org.ehcache.javadoc.PublicApi;

/**
 * @author supanpan
 * @date 2023/12/25
 */
@Getter
@Setter
@ToString
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class UserAdminDetailDto {

    private Long uid;

    private String phone;

    private String userName;

    private String nickName;

    private String avatar;

    private Long createTime;

    private int status;



}
