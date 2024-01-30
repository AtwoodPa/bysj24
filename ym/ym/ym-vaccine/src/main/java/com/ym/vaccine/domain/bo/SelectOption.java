package com.ym.vaccine.domain.bo;

import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.Data;

/**
 * @author panpan
 */
@Data
@JsonNaming(PropertyNamingStrategy.SnakeCaseStrategy.class)
public class SelectOption {

    private String key;
    private String value;

    public static SelectOption of(String key, String value) {
        SelectOption option = new SelectOption();
        option.setKey(key);
        option.setValue(value);
        return option;
    }

    public static SelectOption of(String name) {
        SelectOption option = new SelectOption();
        option.setKey(name);
        return option;
    }
}
