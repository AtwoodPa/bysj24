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
                <h1><strong>个人信息</strong></h1>
                <div class="custom-breadcrumbs"><a href="index">首页</a> <span class="mx-2">/</span> <strong>个人信息</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    

    <div class="site-section bg-light" id="contact-section">
      <div class="container">
        <div class="row justify-content-center text-center">
        <div class="col-7 text-center mb-5">
          <h2>个人信息</h2>
        </div>
      </div>
        <div class="row justify-content-center text-center">
          <div class="col-7 text-center mb-5">
            <form action="" class="form-horizontal style-form" method="post" id="updateform">
             <input type="hidden" name="id" value="${user.id }"/>
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                 <input type="text" value="${user.username }" name="username" class="form-control" placeholder="用户名" disabled="disabled"/>
                </div>
              </div>
             
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="text" value="${user.name }" name="name" class="form-control" placeholder="姓名" required/>
                </div>
               </div>
               
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="text" value="${user.phone }" name="phone" class="form-control" pattern="\d{11}" placeholder="电话" required/>
                </div>
               </div>
               
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="text" value="${user.dizhi }" name="dizhi" class="form-control" placeholder="住址" required/>
                </div>
               </div>
               
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                   <input type="text" value="${user.email }" name="email" class="form-control" pattern="[a-z0-9]+@[a-z0-9]+\.[a-z]{2,4}" placeholder="Email" required/>
                </div>
               </div>
               
              <div class="form-group row">
                <div class="col-12 mb-lg-0">
                  <input type="button" onclick="update()" class="btn btn-block btn-primary text-white py-3 px-5" value="修改" >
                </div>
              </div>
              <hr>
          
            </form>
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
function update(){
		$.getJSON("<%=Const.QIAN %>users/update",$("#updateform").serialize(),function(data){
			alert(data.msg);
			if(data.code=="0"){
				location.href="<%=Const.QIAN %>users/getById1?id=${user.id}";
			}
		});
	}



</script>
  </body>

</html>

