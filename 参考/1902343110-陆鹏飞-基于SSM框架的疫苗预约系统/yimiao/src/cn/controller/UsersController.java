package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.mysql.cj.util.StringUtils;

import cn.entity.Users;
import cn.service.UsersService;
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
@RequestMapping("/users")
public class UsersController {
	@Autowired
	UsersService usersService;
	
	
	@RequestMapping("list1")
	public String list1(Integer page, String name, HttpSession session,
			Model model) {
		if (page == null) {
			page = 1;
		}
		PageBean pageBean = new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Users> wrapper = new QueryWrapper<Users>();
		if (!StringUtils.isNullOrEmpty(name)) {
			wrapper.like("name", name);
			model.addAttribute("name", name);
		}
		wrapper.eq("role", 1);
		wrapper.eq("isdel", 0);
		IPage<Users> pageList = new Page<Users>(page, pageBean.getPageSize());
		pageList = usersService.page(pageList, wrapper);
		List<Users> list = pageList.getRecords();
		pageBean.setTotalCount((int) pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/doctorList";
	}
	
	
	@RequestMapping("list2")
	public String list2(Integer page, String name, HttpSession session,
			Model model) {
		if (page == null) {
			page = 1;
		}
		PageBean pageBean = new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Users> wrapper = new QueryWrapper<Users>();
		if (!StringUtils.isNullOrEmpty(name)) {
			wrapper.like("name", name);
			model.addAttribute("name", name);
		}
		wrapper.eq("role", 2);
		wrapper.eq("isdel", 0);
		IPage<Users> pageList = new Page<Users>(page, pageBean.getPageSize());
		pageList = usersService.page(pageList, wrapper);
		List<Users> list = pageList.getRecords();
		pageBean.setTotalCount((int) pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/usersList";
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Users users) {
		boolean flag = usersService.updateById(users);
		if (flag) {
			return new ServerResponse("0", "修改成功!");
		} else {
			return new ServerResponse("1", "修改失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Users users) {
		users.setIsdel(1);
		boolean flag = usersService.updateById(users);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("json")
	@ResponseBody
	public Users json(Integer id) {
		return usersService.getById(id);
	}
	
	@RequestMapping("getById")
	public String getById(Integer id,Model model) {
		Users user=usersService.getById(id);
		model.addAttribute("user", user);
		return "admin/updateusers";
	}
	
	@RequestMapping("getById1")
	public String getById1(Integer id,Model model) {
		Users user=usersService.getById(id);
		model.addAttribute("user", user);
		return "updateuser";
	}
	
	
	
	

}

