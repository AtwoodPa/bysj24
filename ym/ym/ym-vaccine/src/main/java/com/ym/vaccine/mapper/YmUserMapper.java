package com.ym.vaccine.mapper;

import com.ym.vaccine.domain.Vaccine;
import com.ym.vaccine.domain.YmUser;
import com.ym.vaccine.domain.vo.YmUserVo;
import com.ym.common.core.mapper.BaseMapperPlus;

import java.util.Arrays;
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
