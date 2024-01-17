<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<aside>
      <div id="sidebar" class="nav-collapse ">
        <!-- sidebar menu start-->
        <ul class="sidebar-menu" id="nav-accordion">
          <h5 class="centered">欢迎您:${sessionScope.users.name }</h5>
          <c:if test="${sessionScope.role==0}">
          <li class="mt">
            <a href="<%=Const.ROOT %>index.jsp">
              <i class="fa fa-home"></i>
              <span>首页</span>
              </a>
          </li>
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>notice/list">
              <i class="fa fa-user"></i><span>公告管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>users/list1">
              <i class="fa fa-user"></i><span>医生管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>users/list2">
              <i class="fa fa-users"></i><span>用户管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>yimiaotype/list">
              <i class="fa fa-list-ul"></i><span>疫苗类型管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>firm/list">
              <i class="fa fa-university"></i><span>疫苗厂家管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>yimiao/list">
              <i class="fa fa-medkit"></i><span>疫苗管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>newstype/list">
              <i class="fa fa-align-justify"></i><span>资讯类型管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>news/list">
              <i class="fa fa-file-text-o"></i><span>资讯管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>record/list">
              <i class="fa fa-bars"></i><span>接种记录</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.ROOT %>updatepwd.jsp">
              <i class="fa fa-cogs"></i><span>修改密码</span>
            </a>
          </li>
          </c:if>
          <c:if test="${sessionScope.role==1 }">
          <li class="mt">
            <a href="<%=Const.ROOT %>index.jsp">
              <i class="fa fa-home"></i>
              <span>首页</span>
              </a>
          </li>
         
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>orders/list">
              <i class="fa fa-book"></i><span>预约管理</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>record/list">
              <i class="fa fa-bars"></i><span>接种记录</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.QIAN %>users/getById?id=${sessionScope.users.id}">
              <i class="fa fa-user"></i><span>我的资料</span>
            </a>
          </li>
          
          <li class="sub-menu">
            <a href="<%=Const.ROOT %>updatepwd.jsp">
              <i class="fa fa-cogs"></i><span>修改密码</span>
            </a>
          </li>
          </c:if>
        </ul>
        <!-- sidebar menu end-->
      </div>
    </aside> 