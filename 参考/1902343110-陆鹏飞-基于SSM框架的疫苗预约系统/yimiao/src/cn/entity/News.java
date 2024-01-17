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
@TableName("news")
public class News extends Model<News> {

    private static final long serialVersionUID=1L;

    /**
     * 新闻id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 类型id
     */
    @TableField("tid")
    private Integer tid;
    
    @TableField(exist=false)
    private Newstype newstype;
    
    public Newstype getNewstype() {
        return newstype;
    }

    public void setNewstype(Newstype newstype) {
        this.newstype = newstype;
    }

    /**
     * 标题
     */
    @TableField("title")
    private String title;

    /**
     * 发布时间
     */
    @TableField("optime")
    private String optime;

    /**
     * 内容
     */
    @TableField("content")
    private String content;

    /**
     * 图片
     */
    @TableField("pic")
    private String pic;

    /**
     * 点赞数
     */
    @TableField("zan")
    private Integer zan;

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

    public News setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getTid() {
        return tid;
    }

    public News setTid(Integer tid) {
        this.tid = tid;
        return this;
    }

    public String getTitle() {
        return title;
    }

    public News setTitle(String title) {
        this.title = title;
        return this;
    }

    public String getOptime() {
        return optime;
    }

    public News setOptime(String optime) {
        this.optime = optime;
        return this;
    }

    public String getContent() {
        return content;
    }

    public News setContent(String content) {
        this.content = content;
        return this;
    }

    public String getPic() {
        return pic;
    }

    public News setPic(String pic) {
        this.pic = pic;
        return this;
    }

    public Integer getZan() {
        return zan;
    }

    public News setZan(Integer zan) {
        this.zan = zan;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public News setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public News setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public News setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "News{" +
        "id=" + id +
        ", tid=" + tid +
        ", title=" + title +
        ", optime=" + optime +
        ", content=" + content +
        ", pic=" + pic +
        ", zan=" + zan +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
