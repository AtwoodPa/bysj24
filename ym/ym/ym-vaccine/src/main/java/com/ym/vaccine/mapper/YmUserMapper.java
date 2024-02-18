package com.ym.vaccine.mapper;

import com.ym.common.core.mapper.BaseMapperPlus;

import java.util.Optional;

/**
 * 疫苗预约用户Mapper接口
 *
 * @author ym
 * @date 2024-01-29
 */
public interface YmUserMapper extends BaseMapperPlus<YmUserMapper, YmUser, YmUserVo> {

    Optional<YmUser> selectUserByRealName(String realName);
}
