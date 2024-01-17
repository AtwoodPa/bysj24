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
@TableName("record")
public class Record extends Model<Record> {

    private static final long serialVersionUID=1L;

    /**
     * 接种记录id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 预约信息id
     */
    @TableField("oid")
    private Integer oid;
    
    @TableField(exist=false)
    private Orders orders;
    
    public Orders getOrders() {
		return orders;
	}

	public void setOrders(Orders orders) {
		this.orders = orders;
	}

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
     * 接种位置
     */
    @TableField("position")
    private String position;

    /**
     * 接种方式
     */
    @TableField("mode")
    private String mode;

    /**
     * 医生
     */
    @TableField("doctor")
    private String doctor;

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

    public Record setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getOid() {
        return oid;
    }

    public Record setOid(Integer oid) {
        this.oid = oid;
        return this;
    }

    public Integer getUid() {
        return uid;
    }

    public Record setUid(Integer uid) {
        this.uid = uid;
        return this;
    }

    public Integer getCid() {
        return cid;
    }

    public Record setCid(Integer cid) {
        this.cid = cid;
        return this;
    }

    public Integer getYid() {
        return yid;
    }

    public Record setYid(Integer yid) {
        this.yid = yid;
        return this;
    }

    public String getPosition() {
        return position;
    }

    public Record setPosition(String position) {
        this.position = position;
        return this;
    }

    public String getMode() {
        return mode;
    }

    public Record setMode(String mode) {
        this.mode = mode;
        return this;
    }

    public String getDoctor() {
        return doctor;
    }

    public Record setDoctor(String doctor) {
        this.doctor = doctor;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public Record setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public Record setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public Record setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Record{" +
        "id=" + id +
        ", oid=" + oid +
        ", uid=" + uid +
        ", cid=" + cid +
        ", yid=" + yid +
        ", position=" + position +
        ", mode=" + mode +
        ", doctor=" + doctor +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
