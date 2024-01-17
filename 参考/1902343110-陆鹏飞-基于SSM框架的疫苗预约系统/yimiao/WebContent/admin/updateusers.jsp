<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="zh">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>疫苗预约接种系统</title>

  <!-- Favicons -->
  <link href="<%=Const.ROOT %>img/favicon.png" rel="icon">
  <link href="<%=Const.ROOT %>img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="<%=Const.ROOT %>lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="<%=Const.ROOT %>lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel="stylesheet" type="text/css" href="<%=Const.ROOT %>css/zabuto_calendar.css">
  <link rel="stylesheet" type="text/css" href="<%=Const.ROOT %>lib/gritter/css/jquery.gritter.css" />
  <!-- Custom styles for this template -->
  <link href="<%=Const.ROOT %>css/style.css" rel="stylesheet">
  <link href="<%=Const.ROOT %>css/style-responsive.css" rel="stylesheet">
  <script src="<%=Const.ROOT %>lib/chart-master/Chart.js"></script>

  
</head>

<body>
  <section id="container">
    <%@include file="header.jsp" %>
    <%@include file="sidebar.jsp" %>
    <!--main content start-->
    <section id="main-content">
	<!--医院-->
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> 我的资料</h3>
        <div class="row mt">
          <!--  DATE PICKERS -->
          <div class="col-lg-12">
            <div class="form-panel">
              <form action="" class="form-horizontal style-form" id="usersform" method="post">
              	<input type="hidden" name="id" value="${user.id }"/>
              	<div class="form-group">
                  <label class="control-label col-md-2">用户名:</label>
                  <div class="col-md-5 col-xs-10">
                    <input class="form-control form-control-inline" type="text" value="${user.username}" name="username" disabled>
                  </div>
                </div>
              	
              	<div class="form-group">
                  <label class="control-label col-md-2">医生姓名:</label>
                  <div class="col-md-5 col-xs-10">
                    <input class="form-control form-control-inline" type="text" value="${user.name}" name="name" required>
                  </div>
                </div>
                
                <div class="form-group">
                  <label class="control-label col-md-2">联系电话:</label>
                  <div class="col-md-5 col-xs-10">
                    <input class="form-control form-control-inline" type="number" value="${user.phone}" name="phone" required>
                  </div>
                </div>
                
                
                <div class="form-group">
                  <div class="col-lg-offset-2 col-lg-10">
                    <button class="btn btn-theme" type="button" onclick="update()">修改</button>
                  </div>
                </div>
              </form>
            </div>
            <!-- /form-panel -->
          </div>
          <!-- /col-lg-12 -->
        </div>
        <!-- /row -->
      </section>
    <!--main content end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script>
  <script src="<%=Const.ROOT %>lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Const.ROOT %>lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="<%=Const.ROOT %>lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="<%=Const.ROOT %>lib/common-scripts.js"></script>
  <script src="<%=Const.ROOT %>lib/ajaxfileupload.js"></script>
 <script>
  	function update(){
  		$.getJSON("<%=Const.QIAN %>users/update",$("#usersform").serialize(),function(data){
  			alert(data.msg);
  			if(data.code=="0"){
  				location.href="<%=Const.QIAN %>users/getById?id=${user.id}";
  			}
  		});
  	}
  	
  	
  </script>
</body>

</html>
