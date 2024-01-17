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

      
      <div class="hero inner-page" style="background-image: url('<%=Const.QIAN %>images/hero_2_a.jpg');">
        
         <form class="trip-form" style="width:732.5px;right:50px;top:200px;float: right;" action="" id="searchForm" method="post">
                <input type="hidden" name="page" id="page" value="1"/>
                <div class="row align-items-center">
                  
                  <div class="mb-3 mb-md-0 col-md-3" >
                    <select name="tid" class="custom-select form-control" style="width:178px" >
                      <option value="-1">全部资讯</option>
                      <c:forEach items="${newstype }" var="l" varStatus="st">
                      
                      <option value="${l.id }" <c:if test="${tid==l.id }"> selected </c:if>>${l.name }</option>
                      </c:forEach>
                    </select>
                  </div>
                  <div class="mb-3 mb-md-0 col-md-3">
                    <div class="form-control-wrap">
                      <input type="text" id="" name="title" value="${title }" placeholder="标题" class="form-control px-3" style="width:178px;margin-left:50px">
                    </div>
                  </div>
                  <div class="mb-3 mb-md-0 col-md-3">
                   <input type="submit" id="sousuo" value="搜索" class="btn btn-primary btn-block py-3" style="width:178px;margin-left:90px">
                  </div>
                </div>
                
              </form>
        
        
        <div class="container">
          <div class="row align-items-end ">
            <div class="col-lg-5">

              <div class="intro">
                <h1><strong>资讯</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span> <strong>资讯</strong></div>
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
        
        
        <c:forEach items="${list }" var="n" varStatus="st">
          <div class="col-lg-4 col-md-6 mb-4">
            <div class="post-entry-1 h-100">
              <a href="<%=Const.QIAN %>json?id=${n.id}">
              </a>
              <div class="post-entry-1-contents">
                
                <h2 style=""><a href="<%=Const.QIAN %>news/view?id=${n.id}">${n.title }</a></h2>
                <span class="meta d-inline-block mb-3">${n.optime }  </span>
                <p><a href="<%=Const.QIAN %>news/view?id=${n.id}"><img src="<%=Const.QIAN %>images/${n.pic }" style="width: 300px"/></a></p> 
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
	document.getElementById("page").value=page;
	document.getElementById("searchForm").submit();
}
	
	
	
	</script>
  </body>

</html>

