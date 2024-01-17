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
import cn.entity.News;
import cn.entity.Newstype;
import cn.entity.Yimiaotype;
import cn.service.NewsService;
import cn.service.NewstypeService;
import cn.util.Const;
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
@RequestMapping("/news")
public class NewsController {
	@Autowired
	NewsService newsService;
	@Autowired
	NewstypeService newstypeService;
	
	@RequestMapping("list")
	public String list(Integer page,String title,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<News> wrapper = new QueryWrapper<News>();
		if(!StringUtils.isNullOrEmpty(title)){
			wrapper.like("title", title);
			model.addAttribute("title",title);
		}
		wrapper.eq("isdel", 0);
		IPage<News> pageList=new Page<News>(page,pageBean.getPageSize());
		pageList = newsService.page(pageList, wrapper);
		List<News> list=pageList.getRecords();
		for (News m : list) {
			if(m.getTid()!=null){
				Newstype y = newstypeService.getById(m.getTid());
				m.setNewstype(y);
			}
		}
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		return "admin/newsList";
	}
	
	@RequestMapping("list1")
	public String list1(Integer page,String title,Integer tid,HttpSession session,Model model) {
		if(page==null){
			page=1;
		}
		
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		QueryWrapper<News> wrapper = new QueryWrapper<News>();
		if(!StringUtils.isNullOrEmpty(title)){
			wrapper.like("title", title);
			model.addAttribute("title",title);
		}
		if(tid!=null && tid!=-1){
			wrapper.eq("tid",tid);
			model.addAttribute("tid",tid);
		}
		wrapper.eq("isdel", 0);
		IPage<News> pageList=new Page<News>(page,pageBean.getPageSize());
		pageList = newsService.page(pageList, wrapper);
		List<News> list=pageList.getRecords();
		for (News m : list) {
			if(m.getTid()!=null){
				Newstype y = newstypeService.getById(m.getTid());
				m.setNewstype(y);
			}
		}
		pageBean.setTotalCount((int)pageList.getTotal());
		model.addAttribute("pageBean", pageBean);
		model.addAttribute("list", list);
		//查看类型
		QueryWrapper<Newstype> wrapper1 = new QueryWrapper<Newstype>();
		wrapper1.eq("isdel", 0);
		List<Newstype> newstype=newstypeService.list(wrapper1);
		session.setAttribute("newstype", newstype);
		return "news";
	}

	@RequestMapping("add")
	@ResponseBody
	public ServerResponse add(News news) {
		news.setIsdel(0);
		news.setZan(0);
		news.setOptime(Const.getShortTime());
		boolean flag = newsService.save(news);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("update")
	@ResponseBody
	public ServerResponse update(News news) {
		boolean flag = newsService.updateById(news);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}

	@RequestMapping("delete")
	@ResponseBody
	public ServerResponse delete(News news) {
		news.setIsdel(1);
		boolean flag = newsService.updateById(news);
		if (flag) {
			return new ServerResponse("0", "操作成功!");
		} else {
			return new ServerResponse("1", "操作失败!");
		}
	}
	
	@RequestMapping("jsonlist")
	@ResponseBody
	public List<News> jsonlist(HttpSession session) {
		QueryWrapper<News> wrapper = new QueryWrapper<News>();
		wrapper.eq("isdel", 0);
		return newsService.list(wrapper);
	}

	@RequestMapping("json")
	@ResponseBody
	public News json(Integer id) {
		return newsService.getById(id);
	}
	
	@RequestMapping("view")
	public String view(Integer id,Model model) {
		News news=newsService.getById(id);
		model.addAttribute("news", news);
		return "newsList";
	}	
	
	@RequestMapping("zan")
	@ResponseBody
	public int zan(Integer id,Model model) {
		News news=newsService.getById(id);
		news.setZan(news.getZan()+1);
		newsService.updateById(news);
		return news.getZan();
	}

}

