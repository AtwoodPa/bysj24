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
                <h1><strong>接种记录</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span> <strong>接种记录</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    

    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <h2 class="section-heading"><strong>接种记录</strong></h2>
            <p class="mb-5"></p>
          </div>
        </div>
        <div class="row">
        <table class="table table-hover">
  <thead>
    <tr>
      <th>编号</th>
      <th>接种码</th>
      <th>预约人</th>
      <th>接种人</th>
      <th>疫苗名称</th>
      <th>接种时间</th>
      <th>接种位置</th>
      <th>接种方式</th>
      <th>接种医生</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="d" varStatus="st">
    <tr>
      		  <td>${st.count }</td>
		      <td>${d.orders.no}</td>
		      <td>${d.user.name }</td>
		      <td>${d.children.name }</td>
		      <td>${d.yimiao.name }</td>
		      <td>${d.orders.time }</td>
		      <td>${d.position }</td>
		      <td>${d.mode }</td>
		      <td>${d.doctor }</td>
      <td>
	     
	      <button class="btn btn-danger btn-xs" onclick="del(${d.id })">删除</button>
	     
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
        
        
        
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
	<script src="<%=Const.QIAN %>wangEditor/wangEditor.js"></script>
    <script src="<%=Const.QIAN %>js/main.js"></script>
	<script>
	
	
	
	function del(id){
		$.getJSON("<%=Const.QIAN %>record/delete",{"id":id},function(data){
			if(data.code=="0"){
    			location.href="<%=Const.QIAN %>record/list";
    		}else{
      			alert(data.msg);
      		}
		})
	}
	
	
	
	
	
	</script>
  </body>

</html>

