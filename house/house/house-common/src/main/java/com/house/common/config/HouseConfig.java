package com.house.common.config;

import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * 读取项目相关配置
 *
 * @author Lion Li
 */

@Data
@Component
@ConfigurationProperties(prefix = "house")
public class HouseConfig {

    /**
     * 项目名称
     */
    private String name;

    /**
     * 版本
     */
    private String version;

    /**
     * 版权年份
     */
    private String copyrightYear;

    /**
     * 上传路径
     */
    private static String profile;
    /**
     * 缓存懒加载
     */
    private boolean cacheLazy;

    /** 获取地址开关 */
    private static boolean addressEnabled;


    public static String getProfile() {
        return profile;
    }

    public static void setProfile(String profile) {
        HouseConfig.profile = profile;
    }

    public static boolean isAddressEnabled() {
        return addressEnabled;
    }

    public static void setAddressEnabled(boolean addressEnabled) {
        HouseConfig.addressEnabled = addressEnabled;
    }
    /**
     * 获取导入上传路径
     */
    public static String getImportPath()
    {
        return getProfile() + "/import";
    }

    /**
     * 获取头像上传路径
     */
    public static String getAvatarPath()
    {
        return getProfile() + "/avatar";
    }

    /**
     * 获取下载路径
     */
    public static String getDownloadPath()
    {
        return getProfile() + "/download/";
    }

    /**
     * 获取上传路径
     */
    public static String getUploadPath()
    {
        return getProfile() + "/upload";
    }
}
