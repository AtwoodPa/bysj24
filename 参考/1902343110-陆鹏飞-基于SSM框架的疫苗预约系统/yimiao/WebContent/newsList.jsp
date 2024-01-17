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

      
      <div class="hero inner-page" style="background-image: url('<%=Const.QIAN %>images/hero_1_a.jpg');">
        
        <div class="container">
          <div class="row align-items-end ">
            <div class="col-lg-5">
			<input type="hidden" id="role" value="${sessionScope.role }"/>
			<input type="hidden" id="id" value="${news.id }"/>
              <div class="intro">
                <h1><strong>资讯详情</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span><a href="<%=Const.QIAN %>news/list1"> <strong>资讯</strong></a></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    

    <div class="site-section">
      <div class="container">
        <div class="row" style="margin-left:200px">
          
          <div style="width:700px;">
            <h2>${news.title }</h2>
            <p>${news.optime } <i class="fa fa-thumbs-o-up" id="zan" aria-hidden="true" style="margin-left:30px;margin-right: 10px;cursor: pointer;"></i>点赞数<span id="dianzan">${news.zan }</span></p>
           
            <p>${news.content }</p>
          </div>
        </div>
      </div>
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

    <script src="<%=Const.QIAN %>js/main.js"></script>
    <script>
    
    $("#zan").one('click',function(){
    	if($("#role").val()!=2 ){
    		alert("请先登录！");
    		location.href="<%=Const.QIAN %>login.jsp";
    		return;
    	}
    	$("#zan").removeClass("fa-thumbs-o-up");
    	$("#zan").addClass("fa-thumbs-up");
    	$.getJSON("<%=Const.QIAN %>news/zan",{"id":$("#id").val()},function(data){
    		$("#dianzan").html(data);
    	});
    });
    
    
    
    
    
    
    
    
    
    
    </script>
	
  </body>
  

</html>

