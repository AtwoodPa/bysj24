<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
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
                <h1><strong>厂家详情</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>firm/list1">厂家信息</a> <span class="mx-2">/</span><strong>厂家详情</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>
      
	<div class="col-lg-4 mb-4" style="margin-top:100px;margin-left:370px">
	            <div class="testimonial-2">
	              <blockquote class="mb-4">
	               <p> <span>厂家名称：</span><p>${firm.name }</P></p>
	              </blockquote>
	              
	              <blockquote class="mb-4">
	               <p> <span>厂家图片：</span><span><a href="<%=Const.QIAN%>images/${firm.pic }" target="_blank"><img src="<%=Const.QIAN %>images/${firm.pic }" style="width: 500px;margin-top:20px"/></a></span></p>
	              </blockquote>
	             
	             
	              
	            </div>
	          </div>
	          
	         
	          <div style="width:500px;margin-top: -520px;margin-left: 1100px;margin-bottom: 50px">
	          <hr>
	          <h2 align="center">厂家介绍</h2>
	          <P>${firm.content }</P>
	          <hr>
	          </div>
   
    </div>
    

      
     

    <%@include file="commons/down.jsp" %>

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
	<script src="<%=Const.QIAN %>wangEditor/wangEditor.js"></script>
    <script src="<%=Const.QIAN %>js/main.js"></script>
    <script>
    
	
	
	
	
    </script>

  </body>

</html>

