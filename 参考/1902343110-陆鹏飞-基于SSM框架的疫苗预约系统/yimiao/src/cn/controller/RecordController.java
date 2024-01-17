package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mysql.cj.util.StringUtils;

import cn.entity.Orders;
import cn.entity.Record;
import cn.entity.Children;
import cn.entity.Users;
import cn.entity.Yimiao;
import cn.service.ChildrenService;
import cn.service.OrdersService;
import cn.service.RecordService;
import cn.service.UsersService;
import cn.service.YimiaoService;
import cn.util.PageBean;
import cn.util.ServerResponse;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@Controller
@RequestMapping("/record")
public class RecordController {
	@Autowired
	OrdersService ordersService;
	@Autowired
	RecordService recordService;
	@Autowired
	UsersService usersService;
	@Autowired
	ChildrenService childrenService;
	@Autowired
	YimiaoService yimiaoService;
	
	
	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Record record,HttpSession session) {
		Orders orders=ordersService.getById(record.getOid());
		record.setUid(orders.getUid());
		record.setCid(orders.getCid());
		record.setYid(orders.getYid());
		record.setBak1("0");
		record.setBak2("0");
		record.setIsdel(0);
		orders.setBak1("记录已添加");
		ordersService.updateById(orders);
		boolean flag = recordService.save(record);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("json")
	@ResponseBody
	public Record json(Integer id) {
		return recordService.getById(id);
	}
	
	
	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Record record,HttpSession session) {
		Integer role = (Integer) session.getAttribute("role");
		
		if(role==1){
			record.setBak1("1");
		}
		if(role==2){
			record.setBak2("1");
		}
		boolean flag = recordService.updateById(record);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("list")
	public String list(Integer page, String doctor, HttpSession session,
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
		QueryWrapper<Record> wrapper = new QueryWrapper<Record>();
		wrapper.eq("isdel", 0);
		if (!StringUtils.isNullOrEmpty(doctor)) {
			wrapper.like("doctor", doctor);
			model.addAttribute("doctor", doctor);
		}
		
		if (role == 1) {
			wrapper.eq("bak1", "0");
		}
		if (role == 2) {
			pageBean.setPageSize(50);//用户查询每页显示50条
			wrapper.eq("uid", users.getId());// 自己的订单
			wrapper.eq("bak2", "0");
		}
		wrapper.orderByDesc("id");
		IPage<Record> pageList = new Page<Record>(page, pageBean.getPageSize());
		pageList = recordService.page(pageList, wrapper);
		List<Record> list = pageList.getRecords();
		// 关联对象
		for (Record m : list) {
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
			if(m.getOid()!=null){
				Orders o  = ordersService.getById(m.getOid());
				m.setOrders(o);
			}
		}
		pageBean.setTotalCount((int) pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		if(role == 2){
			return "jilu";
		}
		return "admin/record";
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Record record) {
		boolean flag = recordService.updateById(record);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
}

