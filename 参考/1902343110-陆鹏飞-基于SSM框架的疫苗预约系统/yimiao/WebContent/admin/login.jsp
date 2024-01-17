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
  <!-- Custom styles for this template -->
  <link href="<%=Const.ROOT %>css/style.css" rel="stylesheet">
  <link href="<%=Const.ROOT %>css/style-responsive.css" rel="stylesheet">
  
</head>

<body>
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page" style="margin-top:100px">
    <div class="container">
      <form class="form-login" action="" id="loginForm">
        <h2 class="form-login-heading">疫苗预约接种系统后台管理</h2>
        <div class="login-wrap">
          <input type="text" class="form-control" name="username" placeholder="用户名" autofocus value="">
          <br>
          <input type="password" class="form-control" name="password" placeholder="密码" value="">
          <br>
          <select name="role" class="form-control" id="role">
          	<option value="0">管理员</option>
          	<option value="1">医生</option>
          </select>
          <label class="checkbox form-inline">
              <input type="text" style="width:140px;" name="vcode" class="form-control" placeholder="验证码">
              <img alt="无" src="<%=Const.QIAN %>code" title="看不清,换一下" id="code">
          </label>
          <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> 登录</button>
          <hr>
          <div class="registration">
            没有账号?<br/>
             <a data-toggle="modal" href="<%=Const.QIAN %>index">前台首页</a> | <a data-toggle="modal" href="login.html#myModal">医生注册</a> 
          </div>
        </div>
      </form>
    </div>
  </div>
  
       
         <!-- modal -->
 		<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="regForm" autocomplete="off">
              <input type="hidden" name="role" value="1"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">医生注册---请填写以下资料</h4>
              </div>
              <div class="modal-body">
              	<div class="form-group">
                <label class="col-sm-2 control-label">用户名:</label>
			    <div class="col-sm-10">
			      <input type="text" id="username" name="username" class="form-control" required="required"/>
			    </div>	 
                </div>
               
              	<div class="form-group">
                <label class="col-sm-2 control-label">密码:</label>
			    <div class="col-sm-10">
			      <input type="password" id="pass1" name="password" class="form-control" required="required"/>
			    </div>	 
                </div>
                
              	<div class="form-group">
                <label class="col-sm-2 control-label">确认密码:</label>
			    <div class="col-sm-10">
			      <input type="password" id="pass2" class="form-control" required="required"/>
			    </div>	 
                </div>
              
              	<div class="form-group">
                <label class="col-sm-2 control-label">医生姓名:</label>
			    <div class="col-sm-10">
			      <input type="text" name="name" class="form-control" required="required"/>
			    </div>	 
                </div>
              
              	<div class="form-group">
                <label class="col-sm-2 control-label">联系电话:</label>
			    <div class="col-sm-10">
			      <input type="text" name="phone" class="form-control" pattern="\d{11}" required="required"/>
			    </div>	 
                </div>
              <!-- 
              	<div class="form-group">
                <label class="col-sm-2 control-label">Email:</label>
			    <div class="col-sm-10">
			      <input type="text" name="email" class="form-control" pattern="/^\w+@[a-z0-9]+\.[a-z]{2,4}$/" required="required"/>
			    </div>	 
                </div>
               -->  
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
        
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script>
  <script src="<%=Const.ROOT %>lib/bootstrap/js/bootstrap.min.js"></script>
  <script src="<%=Const.ROOT %>lib/ajaxfileupload.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="<%=Const.ROOT %>lib/jquery.backstretch.min.js"></script>
  <script>
    $.backstretch("<%=Const.ROOT %>img/login-bg.jpg", {
      speed: 500
    });
    $(function(){
    	 $("#code").click(function(){
    	   this.src="<%=Const.QIAN %>code?"+new Date().getTime();
    	 });
    });
    //登陆
    $("#loginForm").submit(function(){
    		$.getJSON("<%=Const.QIAN %>login",$("#loginForm").serialize(),function(data){
        		if(data.code=="0"){
        			location.href="<%=Const.ROOT %>index.jsp";
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
    			location.href="<%=Const.ROOT %>login.jsp";
    		}
    	});
    	return false;
    });
  
   
    
    
  </script>
</body>

</html>
