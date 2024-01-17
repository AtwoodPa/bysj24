package cn.controller;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cn.entity.Notice;
import cn.service.NoticeService;
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
@RequestMapping("/notice")
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	@RequestMapping("list")
	public String list(Integer page,String content,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<Notice> wrapper = new QueryWrapper<Notice>();
		if(!StringUtils.isNullOrEmpty(content)){
			wrapper.like("content", content);
			session.setAttribute("content1", content);
		}
		wrapper.eq("isdel", 0).last(" order by id desc");
		IPage<Notice> pageList=new Page<Notice>(page,pageBean.getPageSize());
		pageList = noticeService.page(pageList, wrapper);
		List<Notice> list=pageList.getRecords();
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/noticeList";
	}
	
	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(Notice notice,HttpSession session) {
		notice.setIsdel(0);
		boolean flag = noticeService.save(notice);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	

	@RequestMapping("json")
	@ResponseBody
	public Notice json(Integer id) {
		return noticeService.getById(id);
	}
	
	@RequestMapping("del")
	@ResponseBody
	public ServerResponse delete(Notice notice) {
		notice.setIsdel(1);
		boolean flag = noticeService.updateById(notice);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(Notice notice) {
		boolean flag = noticeService.updateById(notice);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
}

