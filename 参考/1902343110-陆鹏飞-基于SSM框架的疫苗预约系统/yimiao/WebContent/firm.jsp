<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">

  <head>
    <title>疫苗预约接种系统</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <link rel="stylesheet" href="<%=Const.QIAN %>fonts/icomoon/style.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/bootstrap.min.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/bootstrap-datepicker.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/jquery.fancybox.min.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/owl.carousel.min.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/owl.theme.default.min.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>fonts/flaticon/font/flaticon.css">
    <link rel="stylesheet" href="<%=Const.QIAN %>css/aos.css">

    <!-- MAIN CSS -->
    <link rel="stylesheet" href="<%=Const.QIAN %>css/style.css">

  </head>

  <body>

    
    <div class="site-wrap" id="home-section">

      <%@include file="commons/top.jsp" %>

      
      <div class="hero inner-page" style="background-image: url('<%=Const.QIAN %>images/hero_4_a.jpg');">
        
        <div class="container">
          <div class="row align-items-end ">
            <div class="col-lg-5">

              <div class="intro">
                <h1><strong>厂家信息</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span> <strong>厂家信息</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    <form class="trip-form" action="" id="searchForm" method="post" style="display:none">
                <input type="hidden" name="page" id="page" value="1"/>
		</form>

    <div class="site-section bg-light">
      <div class="container">
       
        <div class="row">
        
       	 <c:forEach items="${firm }" var="h" varStatus="st">
	          <div class="col-lg-4 mb-4">
	            <div class="testimonial-2">
	              <blockquote class="mb-4">
	               <p class="author-name"> <span>厂家名称：</span><span>${h.name }</span></p>
	              </blockquote>
	              <blockquote class="mb-4">
	               <p class="author-name"> 图片：<p><img src="<%=Const.QIAN %>images/${h.pic }" style="width: 260px"/></p>
	              </blockquote>
	            
	              <div>
                  <p><a href="<%=Const.QIAN %>firm/view?id=${h.id }" class="btn btn-primary btn-sm" >厂家详情</a></p>
                </div>
             
	              
	            </div>
	          </div>
          </c:forEach>
          
        </div>
        
        <!--分页-->
	<div class="row">
          <div class="col-5">
            <div class="custom-pagination">
              <a href="#" onClick="goPage(${pageBean.prevPage})" style="color:#fff;cursor:pointer">&lt;&lt;</a>
              ${pageBean.totalCount }条 ${pageBean.pageNo }/${pageBean.totalPage }页
              <a href="#" onClick="goPage(${pageBean.nextPage})" style="color:#fff;cursor:pointer">&gt;&gt;</a>
            </div>
          </div>
        </div>
        
      </div>
    </div>

    

      
      <%@include file="commons/down.jsp" %>

    </div>

    <script src="<%=Const.QIAN %>js/jquery-3.3.1.min.js"></script>
    <script src="<%=Const.QIAN %>js/popper.min.js"></script>
    <script src="<%=Const.QIAN %>js/bootstrap.min.js"></script>
    <script src="<%=Const.QIAN %>js/owl.carousel.min.js"></script>
    <script src="<%=Const.QIAN %>js/jquery.sticky.js"></script>
    <script src="<%=Const.QIAN %>js/jquery.waypoints.min.js"></script>
    <script src="<%=Const.QIAN %>js/jquery.animateNumber.min.js"></script>
    <script src="<%=Const.QIAN %>js/jquery.fancybox.min.js"></script>
    <script src="<%=Const.QIAN %>js/jquery.easing.1.3.js"></script>
    <script src="<%=Const.QIAN %>js/bootstrap-datepicker.min.js"></script>
    <script src="<%=Const.QIAN %>js/aos.js"></script>
    <script src="<%=Const.QIAN %>js/main.js"></script>
	<script>
	function goPage(page){
		$("#page").val(page);
		$("#searchForm").submit();
	}
	
	</script>
  </body>

</html>

