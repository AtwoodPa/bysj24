package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Children;
import cn.entity.Users;
import cn.service.ChildrenService;
import cn.util.ServerResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@Controller
@RequestMapping("/children")
public class ChildrenController {
	@Autowired
	ChildrenService childrenService;
	
	@RequestMapping("list")
	public String list(Integer page,HttpSession session,Model model) {
		QueryWrapper<Children> wrapper = new QueryWrapper<Children>();
		Users users=(Users)session.getAttribute("users");
		wrapper.eq("isdel", 0);
		wrapper.eq("uid", users.getId());
		List<Children> list=childrenService.list(wrapper);
		model.addAttribute("list", list);
		return "children";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Children children,HttpSession session) {
		Users users=(Users)session.getAttribute("users");
		children.setIsdel(0);
		children.setUid(users.getId());
		boolean flag = childrenService.save(children);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Children children) {
		boolean flag = childrenService.updateById(children);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Children children) {
		children.setIsdel(1);
		boolean flag = childrenService.updateById(children);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<Children> jsonlist(HttpSession session) {
		QueryWrapper<Children> wrapper = new QueryWrapper<Children>();
		wrapper.eq("isdel", 0);
		return childrenService.list(wrapper);
	}
	
	@RequestMapping("jsonlist1")
	@ResponseBody
	public List<Children> jsonlist1(HttpSession session) {
		int id=0;
		Users users=(Users)session.getAttribute("users");
		QueryWrapper<Children> wrapper = new QueryWrapper<Children>();
		wrapper.eq("isdel", 0);
		if(users!=null){
			id=users.getId();
		}
		wrapper.eq("uid", id);
		return childrenService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public Children json(Integer id) {
		return childrenService.getById(id);
	}

}

