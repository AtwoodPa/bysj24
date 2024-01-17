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
@TableName("orders")
public class Orders extends Model<Orders> {

    private static final long serialVersionUID=1L;

    /**
     * 预约信息id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 预约人id
     */
    @TableField("uid")
    private Integer uid;
    
    @TableField(exist=false)
    private Users user;
    
    public Users getUser() {
		return user;
	}

	public void setUser(Users user) {
		this.user = user;
	}

    /**
     * 儿童id
     */
    @TableField("cid")
    private Integer cid;
    
    @TableField(exist=false)
    private Children children;
    
    public Children getChildren() {
		return children;
	}

	public void setChildren(Children children) {
		this.children = children;
	}

    /**
     * 疫苗id
     */
    @TableField("yid")
    private Integer yid;
    
    @TableField(exist=false)
    private Yimiao yimiao;
    
    public Yimiao getYimiao() {
		return yimiao;
	}

	public void setYimiao(Yimiao yimiao) {
		this.yimiao = yimiao;
	}

    /**
     * 接种时间
     */
    @TableField("time")
    private String time;

    /**
     * 接种码
     */
    @TableField("no")
    private String no;

    /**
     * 预约状态
     */
    @TableField("status")
    private String status;

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

    public Orders setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getUid() {
        return uid;
    }

    public Orders setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    public Integer getCid() {
        return cid;
    }

    public Orders setCid(Integer cid) {
        this.cid = cid;
        return this;
    }

    public Integer getYid() {
        return yid;
    }

    public Orders setYid(Integer yid) {
        this.yid = yid;
        return this;
    }

    public String getTime() {
        return time;
    }

    public Orders setTime(String time) {
        this.time = time;
        return this;
    }

    public String getNo() {
        return no;
    }

    public Orders setNo(String no) {
        this.no = no;
        return this;
    }

    public String getStatus() {
        return status;
    }

    public Orders setStatus(String status) {
        this.status = status;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public Orders setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public Orders setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public Orders setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Orders{" +
        "id=" + id +
        ", uid=" + uid +
        ", cid=" + cid +
        ", yid=" + yid +
        ", time=" + time +
        ", no=" + no +
        ", status=" + status +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
