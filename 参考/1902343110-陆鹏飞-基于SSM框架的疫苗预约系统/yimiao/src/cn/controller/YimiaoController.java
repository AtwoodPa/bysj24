package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.entity.Yimiao;
import cn.entity.Firm;
import cn.entity.Orders;
import cn.entity.Users;
import cn.entity.Yimiao;
import cn.entity.Yimiaotype;
import cn.service.FirmService;
import cn.service.YimiaoService;
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
@RequestMapping("/yimiao")
public class YimiaoController {
	
	@Autowired
	YimiaoService yimiaoService;
	@Autowired
	YimiaotypeService yimiaotypeService;
	@Autowired
	FirmService firmService;
	
	@RequestMapping("list")
	public String list(Integer page,String name,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Yimiao> wrapper = new QueryWrapper<Yimiao>();
		if(!StringUtils.isNullOrEmpty(name)){
			wrapper.like("name", name);
			model.addAttribute("name",name);
		}
		wrapper.eq("isdel", 0);
		IPage<Yimiao> pageList=new Page<Yimiao>(page,pageBean.getPageSize());
		pageList = yimiaoService.page(pageList, wrapper);
		List<Yimiao> list=pageList.getRecords();
		for (Yimiao m : list) {
			if(m.getTid()!=null){
				Yimiaotype y = yimiaotypeService.getById(m.getTid());
				m.setYimiaotype(y);
			}
			if(m.getFid()!=null){
				Firm f  = firmService.getById(m.getFid());
				m.setFirm(f);
			}
		}
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/yimiaoList";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Yimiao yimiao) {
		yimiao.setIsdel(0);
		boolean flag = yimiaoService.save(yimiao);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Yimiao yimiao) {
		boolean flag = yimiaoService.updateById(yimiao);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(Yimiao yimiao) {
		yimiao.setIsdel(1);
		boolean flag = yimiaoService.updateById(yimiao);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<Yimiao> jsonlist(HttpSession session) {
		QueryWrapper<Yimiao> wrapper = new QueryWrapper<Yimiao>();
		wrapper.eq("isdel", 0);
		return yimiaoService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public Yimiao json(Integer id) {
		return yimiaoService.getById(id);
	}
	
	
	//前台查看
		@RequestMapping("view")
		public String view(Integer id,Model model) {
			Yimiao yimiao=yimiaoService.getById(id);
			if(yimiao.getFid()!=null){
				yimiao.setFirm(firmService.getById(yimiao.getFid()));
			}
			if(yimiao.getTid()!=null){
				yimiao.setYimiaotype(yimiaotypeService.getById(yimiao.getTid()));
			}
			model.addAttribute("yimiao", yimiao);
			return "yimiao_show";
		}

}

