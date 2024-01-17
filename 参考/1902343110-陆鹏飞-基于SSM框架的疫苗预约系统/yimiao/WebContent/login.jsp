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
                <h1><strong>登录</strong></h1>
                <div class="custom-breadcrumbs"><a href="index">首页</a> <span class="mx-2">/</span> <strong>登录</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    

    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row justify-content-center text-center">
        <div class="col-7 text-center mb-5">
          <h2>用户登录</h2>
        </div>
      </div>
        <div class="row justify-content-center text-center">
          <div class="col-7 text-center mb-5">
            <form action="#" method="post" id="loginForm">
             <input type="hidden" name="role" value="2"/>
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="text" name="username" class="form-control" required placeholder="用户名">
                </div>
              </div>
             
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="password" name="password" class="form-control" required placeholder="密码">
                </div>
               </div>
               
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="submit" class="btn btn-block btn-primary text-white py-3 px-5" value="登录" >
                </div>
              </div>
              <hr>
          <div class="registration">
            没有账号?<br/>
            <a data-toggle="modal" href="#myModal">用户注册</a>
          </div>
            </form>
          </div>
          
        </div>
      </div>
    </div>
    
     <!-- Modal -->
 <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form action="" method="post" id="regForm" autocomplete="off">
              <input type="hidden" name="role" value="2"/>
              <div class="modal-header">
                <h4 class="modal-title">用户注册</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <input type="text" id="username" name="username" class="form-control" placeholder="用户名" required/>
                </div>
                <div class="form-group">
                  <input type="password" id="pass1" name="password" class="form-control" placeholder="密码" required/>
                </div>
                <div class="form-group">
                  <input type="password" id="pass2" class="form-control" placeholder="确认密码" required/>
                </div>
                <div class="form-group">
                  <input type="text" name="name" class="form-control" placeholder="姓名" required/>
                </div>
                <div class="form-group">
                  <input type="text" name="phone" class="form-control" pattern="\d{11}" placeholder="电话" required/>
                </div>
                <div class="form-group">
                  <input type="text" name="email" class="form-control" pattern="[a-z0-9]+@[a-z0-9]+\.[a-z]{2,4}" placeholder="Email" required/>
                </div>
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                <button class="btn btn-theme" type="submit">注册</button>
              </div>
              </form>
            </div>
          </div>
        </div>
        <!-- modal -->


      
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
$("#loginForm").submit(function(){
	$.getJSON("<%=Const.QIAN %>login1",$("#loginForm").serialize(),function(data){
		//alert(data.msg);
		if(data.code=="0"){
			location.href="<%=Const.QIAN %>index";
		}else{
			alert(data.msg);
		}
	});
	return false;
});

$("#regForm").submit(function(){
	if($("#pass1").val()!=$("#pass2").val()){
		alert("两次密码不一致");
		return false;
	}
	$.getJSON("<%=Const.QIAN %>reg",$("#regForm").serialize(),function(data){
		alert(data.msg);
		if(data.code=="0"){
			location.href="<%=Const.QIAN %>login.jsp";
		}
	});
	return false;
});



</script>
  </body>

</html>

