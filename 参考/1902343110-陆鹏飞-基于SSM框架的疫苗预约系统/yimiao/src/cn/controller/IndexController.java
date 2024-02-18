package cn.controller;


import javax.servlet.http.HttpServletRequest;

import com.mysql.cj.util.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import cn.entity.Yimiao;
import cn.entity.Notice;
import cn.entity.Users;
import cn.entity.Yimiaotype;
import cn.service.FirmService;
import cn.service.NoticeService;
import cn.service.UsersService;
import cn.service.YimiaoService;
import cn.service.YimiaotypeService;
import cn.util.PageBean;
import cn.util.ServerResponse;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;

import java.util.List;


/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author nnn
 * @since 2021-04-18
 */
@Controller
public class IndexController {
	@Autowired
	UsersService usersService;
	@Autowired
	YimiaoService yimiaoService;
	@Autowired
	FirmService firmService;
	@Autowired
	YimiaotypeService yimiaotypeService;
	@Autowired
	NoticeService noticeService;
	
	
	@RequestMapping("/login")
	@ResponseBody
	public ServerResponse login(String username, String password, String vcode,Integer role,HttpServletRequest request) {
		// 获取验证码
		String code = (String) request.getSession().getAttribute("code");
		if (code != null && code.equalsIgnoreCase(vcode)) {
			QueryWrapper<Users> wrapper = new QueryWrapper<Users>();
			wrapper.eq("username", username);
			wrapper.eq("password", password);
			wrapper.eq("role",role);
			wrapper.eq("isdel", 0);
			Users users = usersService.getOne(wrapper);
			if (users != null) {
				request.getSession().setAttribute("users", users);
				request.getSession().setAttribute("role", role);
				// 查看公告
//				QueryWrapper<Notice> wrapper2 = new QueryWrapper<Notice>();
//				wrapper2.eq("isdel", 0);
//				List<Notice> noticeList = noticeService.list(wrapper2);
//				request.getSession().setAttribute("noticeList", noticeList);
				return  new ServerResponse("0", "登陆成功!");
			} else {
				return  new ServerResponse("1", "用户名密码错误!");
			}
		} else {
			return  new ServerResponse("1", "验证码错误!");
		}
	}
	
	@RequestMapping("/login1")
	@ResponseBody
	public ServerResponse login1(String username, String password, Integer role,HttpServletRequest request) {
		
			QueryWrapper<Users> wrapper = new QueryWrapper<Users>();
			wrapper.eq("username", username);
			wrapper.eq("password", password);
			wrapper.eq("role",role);
			wrapper.eq("isdel", 0);
			Users users = usersService.getOne(wrapper);
			if (users != null) {
				request.getSession().setAttribute("users", users);
				request.getSession().setAttribute("role", role);
				// 查看公告
//				QueryWrapper<Notice> wrapper2 = new QueryWrapper<Notice>();
//				wrapper2.eq("isdel", 0);
//				List<Notice> noticeList = noticeService.list(wrapper2);
//				request.getSession().setAttribute("noticeList", noticeList);
				return  new ServerResponse("0", "登陆成功!");
			} else {
				return  new ServerResponse("1", "用户名密码错误!");
			}
		
	}

	
	
	@RequestMapping("/reg")
	@ResponseBody
	public ServerResponse reg(Users users, HttpServletRequest request) {
		QueryWrapper<Users> wrapper = new QueryWrapper<Users>();
		wrapper.eq("username", users.getUsername());
		wrapper.eq("isdel", 0);
		List<Users> list=usersService.list(wrapper);
		if(list!=null && list.size()>0){
			return new ServerResponse("1", "用户名已经存在!");
		}
		users.setIsdel(0);
		boolean flag = usersService.save(users);
		if (flag) {
			return new ServerResponse("0", "注册成功!");
		} else {
			return new ServerResponse("0", "注册失败!");
		}
	}
	
	@RequestMapping("/updatepwd")
	@ResponseBody
	public ServerResponse updatepwd(String password,
			HttpServletRequest request) {
		Users users = (Users) request.getSession().getAttribute("users");
		if (users != null) {
			users.setPassword(password);
			boolean flag = usersService.updateById(users);
			if (flag) {
				return new ServerResponse("0", "操作成功");
			}
		}
		return new ServerResponse("1", "操作失败");
	}
	
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/admin/login.jsp";
	}
	
	@RequestMapping("/logout1")
	public String logout1(HttpServletRequest request) {
		request.getSession().invalidate();
		return "redirect:/login.jsp";
	}
	
	@RequestMapping("/index")
	public String index(Integer page,String name,Integer tid,HttpServletRequest request) {
		if(page==null){
			page=1;
		}
		PageBean pageBean=new PageBean();
		pageBean.setPageNo(page);
		pageBean.setPageSize(9);
		QueryWrapper<Yimiao> wrapper = new QueryWrapper<Yimiao>();
		if(!StringUtils.isNullOrEmpty(name)){
			wrapper.like("name", name);
			request.setAttribute("name", name);
		}
		if(tid!=null && tid!=-1){
			wrapper.eq("tid", tid);
			request.setAttribute("tid", tid);
		}
		wrapper.eq("isdel", 0);
		wrapper.orderByDesc("id");
		IPage<Yimiao> pageList=new Page<Yimiao>(page,pageBean.getPageSize());
		pageList = yimiaoService.page(pageList, wrapper);
		List<Yimiao> list=pageList.getRecords();
		for(Yimiao c:list){
			if(c.getFid()!=null){
				c.setFirm(firmService.getById(c.getFid()));
			}
			if(c.getTid()!=null){
				c.setYimiaotype(yimiaotypeService.getById(c.getTid()));
			}
		}
		pageBean.setTotalCount((int)pageList.getTotal());
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("yimiaoList", list);
		//查看类型
		QueryWrapper<Yimiaotype> wrapper1 = new QueryWrapper<Yimiaotype>();
		wrapper1.eq("isdel", 0);
		List<Yimiaotype> yimiaotype=yimiaotypeService.list(wrapper1);
		request.getSession().setAttribute("yimiaotype", yimiaotype);
		// 查看公告
				QueryWrapper<Notice> wrapper2 = new QueryWrapper<Notice>();
				wrapper2.eq("isdel", 0);
				List<Notice> noticeList = noticeService.list(wrapper2);
				if(noticeList.size()>8){
					noticeList.subList(0, 8);
				}
				request.getSession().setAttribute("noticeList", noticeList);
	
		return "index";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}

