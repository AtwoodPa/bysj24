package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import com.mysql.cj.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Firm;
import cn.entity.Yimiao;
import cn.service.FirmService;
import cn.util.PageBean;
import cn.util.ServerResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@Controller
@RequestMapping("/firm")
public class FirmController {
	@Autowired
	FirmService firmService;
	
	@RequestMapping("list")
	public String list(Integer page,String name,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Firm> wrapper = new QueryWrapper<Firm>();
		if(!StringUtils.isNullOrEmpty(name)){
			wrapper.like("name", name);
			model.addAttribute("name",name);
		}
		wrapper.eq("isdel", 0).last(" order by id desc");
		IPage<Firm> pageList=new Page<Firm>(page,pageBean.getPageSize());
		pageList = firmService.page(pageList, wrapper);
		List<Firm> list=pageList.getRecords();
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/firmList";
	}
	
	@RequestMapping("list1")
	public String list1(Integer page,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Firm> wrapper = new QueryWrapper<Firm>();
		wrapper.eq("isdel", 0).last(" order by id desc");
		IPage<Firm> pageList=new Page<Firm>(page,pageBean.getPageSize());
		pageList = firmService.page(pageList, wrapper);
		List<Firm> list=pageList.getRecords();
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("firm", list);
		return "firm";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Firm firm) {
		firm.setIsdel(0);
		boolean flag = firmService.save(firm);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Firm firm) {
		boolean flag = firmService.updateById(firm);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Firm firm) {
		firm.setIsdel(1);
		boolean flag = firmService.updateById(firm);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<Firm> jsonlist(HttpSession session) {
		QueryWrapper<Firm> wrapper = new QueryWrapper<Firm>();
		wrapper.eq("isdel", 0);
		return firmService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public Firm json(Integer id) {
		return firmService.getById(id);
	}
	
	@RequestMapping("view")
	public String view(Integer id,Model model) {
		Firm firm=firmService.getById(id);
		model.addAttribute("firm", firm);
		return "firmList";
	}		

}

