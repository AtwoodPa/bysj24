package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Newstype;
import cn.service.NewstypeService;
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
@RequestMapping("/newstype")
public class NewstypeController {
	@Autowired
	NewstypeService newstypeService;
	
	@RequestMapping("list")
	public String list(Integer page,String name,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Newstype> wrapper = new QueryWrapper<Newstype>();
		if(!StringUtils.isNullOrEmpty(name)){
			wrapper.like("name", name);
			model.addAttribute("name",name);
		}
		wrapper.eq("isdel", 0).last(" order by id desc");
		IPage<Newstype> pageList=new Page<Newstype>(page,pageBean.getPageSize());
		pageList = newstypeService.page(pageList, wrapper);
		List<Newstype> list=pageList.getRecords();
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/newstypeList";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Newstype newstype) {
		newstype.setIsdel(0);
		boolean flag = newstypeService.save(newstype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Newstype newstype) {
		boolean flag = newstypeService.updateById(newstype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Newstype newstype) {
		newstype.setIsdel(1);
		boolean flag = newstypeService.updateById(newstype);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<Newstype> jsonlist(HttpSession session) {
		QueryWrapper<Newstype> wrapper = new QueryWrapper<Newstype>();
		wrapper.eq("isdel", 0);
		return newstypeService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public Newstype json(Integer id) {
		return newstypeService.getById(id);
	}

}

