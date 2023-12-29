package com.house.demo.service;

import com.house.common.utils.support.CountablePageWrapper;
import com.house.demo.domain.dto.UserAdminDetailDto;
import com.house.demo.domain.dto.UserQuery;

/**
 * @author supanpan
 * @date 2023/12/29
 */
public interface IUserAdminService {
    CountablePageWrapper<UserAdminDetailDto> queryUserInfoDetails(int page, int pageSize, UserQuery query);
}
