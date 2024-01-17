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
@TableName("yimiao")
public class Yimiao extends Model<Yimiao> {

    private static final long serialVersionUID=1L;

    /**
     * 疫苗id
     */
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    /**
     * 厂家id
     */
    @TableField("fid")
    private Integer fid;
    
    @TableField(exist=false)
    private Firm firm;
    
    public Firm getFirm() {
        return firm;
    }

    public void setFirm(Firm firm) {
        this.firm = firm;
    }
    

    /**
     * 疫苗类型id
     */
    @TableField("tid")
    private Integer tid;
    
    @TableField(exist=false)
    private Yimiaotype yimiaotype;
    
    public Yimiaotype getYimiaotype() {
        return yimiaotype;
    }

    public void setYimiaotype(Yimiaotype yimiaotype) {
        this.yimiaotype = yimiaotype;
    }

    /**
     * 疫苗名称
     */
    @TableField("name")
    private String name;

    /**
     * 疫苗价格
     */
    @TableField("price")
    private Integer price;

    /**
     * 生产批号
     */
    @TableField("no")
    private String no;

    /**
     * 疫苗库存
     */
    @TableField("stock")
    private Integer stock;

    /**
     * 生产日期
     */
    @TableField("time")
    private String time;

    /**
     * 疫苗用量
     */
    @TableField("yonliang")
    private String yonliang;

    /**
     * 适用年龄
     */
    @TableField("apply")
    private String apply;

    /**
     * 疫苗图片
     */
    @TableField("pic")
    private String pic;

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

    public Yimiao setId(Integer id) {
        this.id = id;
        return this;
    }

    public Integer getFid() {
        return fid;
    }

    public Yimiao setFid(Integer fid) {
        this.fid = fid;
        return this;
    }

    public Integer getTid() {
        return tid;
    }

    public Yimiao setTid(Integer tid) {
        this.tid = tid;
        return this;
    }

    public String getName() {
        return name;
    }

    public Yimiao setName(String name) {
        this.name = name;
        return this;
    }

    public Integer getPrice() {
        return price;
    }

    public Yimiao setPrice(Integer price) {
        this.price = price;
        return this;
    }

    public String getNo() {
        return no;
    }

    public Yimiao setNo(String no) {
        this.no = no;
        return this;
    }

    public Integer getStock() {
        return stock;
    }

    public Yimiao setStock(Integer stock) {
        this.stock = stock;
        return this;
    }

    public String getTime() {
        return time;
    }

    public Yimiao setTime(String time) {
        this.time = time;
        return this;
    }

    public String getYonliang() {
        return yonliang;
    }

    public Yimiao setYonliang(String yonliang) {
        this.yonliang = yonliang;
        return this;
    }

    public String getApply() {
        return apply;
    }

    public Yimiao setApply(String apply) {
        this.apply = apply;
        return this;
    }

    public String getPic() {
        return pic;
    }

    public Yimiao setPic(String pic) {
        this.pic = pic;
        return this;
    }

    public Integer getIsdel() {
        return isdel;
    }

    public Yimiao setIsdel(Integer isdel) {
        this.isdel = isdel;
        return this;
    }

    public String getBak1() {
        return bak1;
    }

    public Yimiao setBak1(String bak1) {
        this.bak1 = bak1;
        return this;
    }

    public String getBak2() {
        return bak2;
    }

    public Yimiao setBak2(String bak2) {
        this.bak2 = bak2;
        return this;
    }

    @Override
    protected Serializable pkVal() {
        return this.id;
    }

    @Override
    public String toString() {
        return "Yimiao{" +
        "id=" + id +
        ", fid=" + fid +
        ", tid=" + tid +
        ", name=" + name +
        ", price=" + price +
        ", no=" + no +
        ", stock=" + stock +
        ", time=" + time +
        ", yonliang=" + yonliang +
        ", apply=" + apply +
        ", pic=" + pic +
        ", isdel=" + isdel +
        ", bak1=" + bak1 +
        ", bak2=" + bak2 +
        "}";
    }
}
