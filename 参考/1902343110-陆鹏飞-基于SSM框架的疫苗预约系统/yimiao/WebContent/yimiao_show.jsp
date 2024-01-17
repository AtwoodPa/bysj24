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

              <div class="intro">
                <h1><strong>疫苗详情</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span><strong>疫苗详情</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    <div class="site-section">
      <div class="container">
        <div class="row">
          <div class="col-lg-6 mb-5 mb-lg-0">
            <img src="<%=Const.QIAN %>images/${yimiao.pic }" alt="Image" class="img-fluid rounded">
            <p style="margin-top:100px"></p>
            
             <form class="trip-form" style="width:480px" action="" id="searchForm" method="post">
	            <a>接种时间：</a><input id="time" type="date" name="time" class="form-control" style="width:190px" required="required">
				<a>接种儿童：</a><select id="cid" class="form-control" name="cid" style="width:190px" required="required"></select>
				
	            <input name="yid" value="${yimiao.id }" type="hidden">
	            <input id="uid" name="uid" value="${sessionScope.users.id }" type="hidden">
	            <input id="role" value="${sessionScope.users.role }" type="hidden">
	            
	            <p></p>
	            <input type="button" onclick="yuyue()" value="预约" class="btn btn-primary btn-block py-3" style="width:190px">
            </form>
            
            
            <input id="rizu" value="${cars.price }" type="hidden">
          </div>
          <div class="col-lg-4 ml-auto">
            <h2>疫苗介绍</h2>
            <p style="margin-top:30px"></p>
            <p>疫苗名称：<span>${yimiao.name }</span></p>
            <p>生产厂家：<a href="<%=Const.QIAN %>firm/view?id=${yimiao.firm.id }"><span>${yimiao.firm.name }</span></a></p>
            <p>疫苗类型：<span>${yimiao.yimiaotype.name }</span></p>
            <p>疫苗价格：<span>${yimiao.price }元</span></p>
            <p>疫苗库存：<span>${yimiao.stock }支</span></p>
            <p>生产批号：<span>${yimiao.no }</span></p>
            <p>生产日期：<span>${yimiao.time }</span></p>
            <p>使用剂量：<span>${yimiao.yonliang }/次</span></p>
            <p>使用年龄：<span>${yimiao.apply }</span></p>
           
            
            
            
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
	
	 $(function(){
	  	  $.getJSON("<%=Const.QIAN%>children/jsonlist1",function(data){
	  		  $("#cid").html("<option value=''>请选择接种儿童</option>");
	  		  for(i=0;i<data.length;i++){
	  			  $("#cid").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
	  		  }
	  	 });
	    });
	 
	 function yuyue(){
		 if($("#cid").val()=="" || $("#time").val()==""){
			 alert("请填写必要信息！");
			 return false;
		 }
		 if(confirm('是否预约?')){
			 if($("#role").val()!=2){
					alert("请先登录！");
					location.href="<%=Const.QIAN %>login.jsp";
					return false;
				}
			
				 $.getJSON("<%=Const.QIAN%>orders/add",$("#searchForm").serialize(),function(data){
					 if(data.code=="0"){
						 alert(data.msg);
						 location.href="<%=Const.QIAN %>yimiao/view?id=${yimiao.id }";
						}else{
			  			alert(data.msg);
			  		}
				 });
		 }
	 }
	
	
	</script>
  </body>

</html>

