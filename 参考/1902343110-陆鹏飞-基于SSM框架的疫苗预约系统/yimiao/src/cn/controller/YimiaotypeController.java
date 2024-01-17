package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Yimiaotype;
import cn.service.YimiaotypeService;
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
@RequestMapping("/yimiaotype")
public class YimiaotypeController {
	
	@Autowired
	YimiaotypeService yimiaotypeService;
	
	@RequestMapping("list")
	public String list(Integer page,String name,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Yimiaotype> wrapper = new QueryWrapper<Yimiaotype>();
		if(!StringUtils.isNullOrEmpty(name)){
			wrapper.like("name", name);
			model.addAttribute("name",name);
		}
		wrapper.eq("isdel", 0).last(" order by id desc");
		IPage<Yimiaotype> pageList=new Page<Yimiaotype>(page,pageBean.getPageSize());
		pageList = yimiaotypeService.page(pageList, wrapper);
		List<Yimiaotype> list=pageList.getRecords();
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/yimiaotypeList";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Yimiaotype yimiaotype) {
		yimiaotype.setIsdel(0);
		boolean flag = yimiaotypeService.save(yimiaotype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Yimiaotype yimiaotype) {
		boolean flag = yimiaotypeService.updateById(yimiaotype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Yimiaotype yimiaotype) {
		yimiaotype.setIsdel(1);
		boolean flag = yimiaotypeService.updateById(yimiaotype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<Yimiaotype> jsonlist(HttpSession session) {
		QueryWrapper<Yimiaotype> wrapper = new QueryWrapper<Yimiaotype>();
		wrapper.eq("isdel", 0);
		return yimiaotypeService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public Yimiaotype json(Integer id) {
		return yimiaotypeService.getById(id);
	}

}

