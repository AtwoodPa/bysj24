package com.ym.common.annotation;

import java.lang.annotation.*;

/**
 * 翻译类型注解 (标注到{@link com.ym.common.translation.TranslationInterface} 的实现类)
 *
 * @author PP
 */
@Inherited
@Retention(RetentionPolicy.RUNTIME)
@Target({ElementType.TYPE})
@Documented
public @interface TranslationType {

    /**
     * 类型
     */
    String type();

}
