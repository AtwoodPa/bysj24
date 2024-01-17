package cn.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.extension.activerecord.Model;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableField;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@TableName("children")

public class Children extends Model<Children> {

    private static final long serialVersionUID=1L;

    /**
     * 儿童id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 预约人id
     */
    @TableField("uid")
    private Integer uid;

    /**
     * 儿童姓名
     */
    @TableField("name")
    private String name;

    /**
     * 性别
     */
    @TableField("sex")
    private String sex;

    /**
     * 年龄
     */
    @TableField("age")
    private Integer age;

    /**
     * 过敏药物
     */
    @TableField("guomin")
    private String guomin;

    /**
     * 删除标记
     */
    @TableField("isdel")
    private Integer isdel;

    /**
     * 备用字段
     */
    @TableField("bak1")
    private String bak1;

    /**
     * 备用字段
     */
    @TableField("bak2")
    private String bak2;


    public Integer getId() {
        return id;
    }

    public Children setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getUid() {
        return uid;
    }

    public Children setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    public String getName() {
        return name;
    }

    public Children setName(String name) {
        this.name = name;
        return this;
    }

    public String getSex() {
        return sex;
    }

    public Children setSex(String sex) {
        this.sex = sex;
        return this;
    }

    public Integer getAge() {
        return age;
    }

    public Children setAge(Integer age) {
        this.age = age;
        return this;
    }

    public String getGuomin() {
        return guomin;
    }

    public Children setGuomin(String guomin) {
        this.guomin = guomin;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public Children setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public Children setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public Children setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Children{" +
        "id=" + id +
        ", uid=" + uid +
        ", name=" + name +
        ", sex=" + sex +
        ", age=" + age +
        ", guomin=" + guomin +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
