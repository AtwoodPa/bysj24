package com.house.common.utils.support;

import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.math.NumberUtils;

import java.util.Arrays;
import java.util.Optional;
import java.util.function.Function;

/**
 * 数值类型参数校验工具
 *
 * @author supanpan
 * @date 2023/12/29
 */
public class ParamUtils {

    /**
     * 如果参数是数字类型，返回数字，否则返回null（置于controller进入处，对空参数进行转换操作）
     * @param parameter
     * @param parser
     * @return
     * @param <T>
     */
    public static <T> T nullableNumber(String parameter, Function<String, T> parser) {
        String trimmedParameter = StringUtils.trimToNull(parameter);
        return NumberUtils.isCreatable(trimmedParameter)
            ? parser.apply(trimmedParameter)
            : null;
    }

    public static Optional<Integer> toLimitedInt(String input, int min, int max) {
        if (StringUtils.isNumeric(input)) {
            int v = Integer.parseInt(input);
            if (v >= min && v <= max) {
                return Optional.of(v);
            }
        }
        return Optional.empty();
    }

    public static boolean isPositive(Long value) {
        return value != null && value > 0;
    }

    public static boolean isPositive(Long... values) {
        if (values == null) {
            return false;
        }
        return Arrays.stream(values).allMatch(v -> v != null && v > 0);
    }
}
