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
@TableName("notice")
public class Notice extends Model<Notice> {

    private static final long serialVersionUID=1L;

    /**
     * 公告id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 内容
     */
    @TableField("content")
    private String content;

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

    public Notice setId(Integer id) {
        this.id = id;
        return this;
    }

    public String getContent() {
        return content;
    }

    public Notice setContent(String content) {
        this.content = content;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public Notice setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public Notice setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public Notice setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Notice{" +
        "id=" + id +
        ", content=" + content +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
