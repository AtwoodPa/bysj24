<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link href="<%=Const.ROOT %>lib/font-awesome/css/font-awesome.css" rel="stylesheet" />

      <div class="site-mobile-menu site-navbar-target">
        <div class="site-mobile-menu-header">
          <div class="site-mobile-menu-close mt-3">
            <span class="icon-close2 js-menu-toggle"></span>
          </div>
        </div>
        <div class="site-mobile-menu-body"></div>
      </div>
      


      <header class="site-navbar site-navbar-target" role="banner">
      
      

        <div class="container">
          <div class="row align-items-center position-relative" style="width:1300px">

            <div class="col-2">
              <div class="site-logo">
                <a href="<%=Const.QIAN %>index"><strong>疫苗预约</strong></a>
              </div>
            </div>
            

            <div class="col-10  text-right">
             
              
              <span class="d-inline-block d-lg-none"><a href="#" class=" site-menu-toggle js-menu-toggle py-5 "><span class="icon-menu h3 text-black"></span></a></span>

              <nav class="site-navigation text-right ml-auto d-none d-lg-block" role="navigation">
                <ul class="site-menu main-menu js-clone-nav ml-auto " style="margin-right: 120px">
                
                <!-- notification dropdown start--> 
                <c:if test="${sessionScope.role==2 }">
                <li id="header_notification_bar" class="dropdown">
            <a data-toggle="dropdown" class="dropdown-toggle" href="index.html#">
              <i class="fa fa-bell-o"></i> 公告
              <c:if test="${sessionScope.noticeList.size()>0 }">
              <span class="badge bg-warning">${sessionScope.noticeList.size() }</span>
              </c:if>
            </a>
            <ul class="dropdown-menu extended notification">
              <li>
                <p class="yellow" style="font-weight: 600">有${sessionScope.noticeList.size() }个公告</p>
              </li>
              <c:forEach items="${sessionScope.noticeList}" var="v">
              <li  style="overflow: hidden">
                  <span class="label label-danger" ><i class="fa fa-bolt" style="color:#FF2525;font-weight: 400">${v.content }</i></span>
                  
              </li>
              </c:forEach>
            </ul>
          </li>
          </c:if>
           <!-- notification dropdown start-->
                 
                  <li class="active"><a href="<%=Const.QIAN %>index" class="nav-link" >首页</a></li>
                  <li><a href="<%=Const.QIAN %>firm/list1" class="nav-link">厂家信息</a></li>
                  <c:if test="${sessionScope.role==2}">
                  <li><a href="<%=Const.QIAN %>orders/list" class="nav-link">我的预约</a></li>
                  </c:if>
                  <c:if test="${sessionScope.role==2}">
                  <li><a href="<%=Const.QIAN %>record/list" class="nav-link">接种记录</a></li>
                  </c:if>
                  <c:if test="${sessionScope.role==2}">
                  <li><a href="<%=Const.QIAN %>children/list" class="nav-link">接种人管理</a></li>
                  </c:if>
                  <li><a href="<%=Const.QIAN %>news/list1" class="nav-link">资讯</a></li>
                  <c:if test="${sessionScope.role==2}">
                  <li><a href="<%=Const.QIAN %>users/getById1?id=${sessionScope.users.id }" class="nav-link">个人信息</a></li>
                  </c:if>
                  <c:if test="${sessionScope.role!=2}">
                  <li><a href="<%=Const.QIAN %>login.jsp" class="nav-link" >登陆/注册</a></li>
                  </c:if>
                   <c:if test="${sessionScope.role==2}">
				  <li><a href="<%=Const.QIAN %>gaimi.jsp" class="nav-link" >修改密码</a></li>
				  </c:if>
                   <c:if test="${sessionScope.role==2}">
				  <li><a href="<%=Const.QIAN %>logout1">退出</a></li>
				  </c:if>
                  
                </ul>
              </nav>
            </div>
          </div>
        </div>
         <c:if test="${sessionScope.role==2}">
           <h5 class="centered" style="float:right;margin-top:-50px;margin-right:20px;color:#000">欢迎您!${sessionScope.users.name }</h5>
		 </c:if>
		   
		 
  <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script> 
  <script>
  function chongzhi(){
		$("#updateModal").modal("show");
	}
  
  
  </script>
  
		 
		 
   </header>
      
     
        
 
  
  
      
      
      