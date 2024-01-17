package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Children;
import cn.entity.Orders;
import cn.entity.Users;
import cn.entity.Yimiao;
import cn.service.ChildrenService;
import cn.service.OrdersService;
import cn.service.UsersService;
import cn.service.YimiaoService;
import cn.util.Const;
import cn.util.PageBean;
import cn.util.ServerResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mysql.cj.util.StringUtils;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@Controller
@RequestMapping("/orders")
public class OrdersController {
	@Autowired
	OrdersService ordersService;
	@Autowired
	UsersService usersService;
	@Autowired
	ChildrenService childrenService;
	@Autowired
	YimiaoService yimiaoService;
	
	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Orders orders,HttpSession session) {
		Yimiao yimiao=yimiaoService.getById(orders.getYid());
		if(yimiao.getStock()==0){
			return new ServerResponse("1", "该疫苗库存不足，请等待补货！");
		}
		orders.setIsdel(0);
		orders.setBak2("0");
		orders.setNo(Const.getOrdersno());
		orders.setStatus("已预约");
		boolean flag = ordersService.save(orders);
		if (flag) {
			return new ServerResponse("0", "预约成功!");
		} else {
			return new ServerResponse("1", "预约失败!");
		}
	}
	
	@RequestMapping("list")
	public String list(Integer page, String no, HttpSession session,
			Model model) {
		if (page == null) {
			page = 1;
		}
		PageBean pageBean = new PageBean();
		pageBean.setPageNo(page);
		Integer role = (Integer) session.getAttribute("role");
		Users users = (Users) session.getAttribute("users");
		if(users==null){
			return "admin/login";
		}
		QueryWrapper<Orders> wrapper = new QueryWrapper<Orders>();
		wrapper.eq("isdel", 0);
		if (!StringUtils.isNullOrEmpty(no)) {
			wrapper.like("no", no);
			model.addAttribute("no", no);
		}
		
		if (role == 2) {
			pageBean.setPageSize(50);//用户查询每页显示50条
			wrapper.eq("uid", users.getId());// 自己的订单
			wrapper.eq("bak2", "0");
		}
		wrapper.orderByDesc("status");
		wrapper.orderByDesc("id");
		IPage<Orders> pageList = new Page<Orders>(page, pageBean.getPageSize());
		pageList = ordersService.page(pageList, wrapper);
		List<Orders> list = pageList.getRecords();
		// 关联对象
		for (Orders m : list) {
			if(m.getUid()!=null){
				Users u = usersService.getById(m.getUid());
				m.setUser(u);
			}
			if(m.getYid()!=null){
				Yimiao y  = yimiaoService.getById(m.getYid());
				m.setYimiao(y);
			}
			if(m.getCid()!=null){
				Children c  = childrenService.getById(m.getCid());
				m.setChildren(c);
			}
		}
		pageBean.setTotalCount((int) pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		if(role == 2){
			return "dingdan";
		}
		return "admin/ordersList";
	}
	
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Orders orders) {
		Yimiao yimiao=yimiaoService.getById(ordersService.getById(orders.getId()).getYid());
		if(yimiao.getStock()>0){
			yimiao.setStock(yimiao.getStock()-1);
		}
		yimiaoService.updateById(yimiao);
		boolean flag = ordersService.updateById(orders);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Orders orders,HttpSession session) {
		Integer role = (Integer) session.getAttribute("role");
		if(role==1){
			orders.setIsdel(1);
		}
		if(role==2){
			orders.setBak2("1");
		}
		boolean flag = ordersService.updateById(orders);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
}

