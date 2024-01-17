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
                <h1><strong>接种人管理</strong></h1>
                <div class="custom-breadcrumbs"><a href="<%=Const.QIAN %>index">首页</a> <span class="mx-2">/</span> <strong>接种人管理</strong></div>
              </div>

            </div>
          </div>
        </div>
      </div>

    

    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <h2 class="section-heading"><strong>接种人详情   </strong> <button type="button" onclick="add()" class="btn btn-info"> 添加</button></h2>
            <p class="mb-5"></p>
          </div>
        </div>
        <div class="row">
        <table class="table table-hover">
  <thead>
    <tr>
      <th>编号</th>
      <th>姓名</th>
      <th>性别</th>
      <th>年龄</th>
      <th>药物</th>
      <th>操作</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${list }" var="d" varStatus="st">
    <tr>
      <td>${st.count }</td>
      <td>${d.name }</td>
      <td>${d.sex }</td>
      <td>${d.age }岁</td>
      <td>${d.guomin }</td>
      <td>
	     <button class="btn btn-info btn-xs" onclick="update(${d.id })">修改</button>
	     <button class="btn btn-danger btn-xs" onclick="del(${d.id })">删除</button>
      </td>
    </tr>
   </c:forEach>
  </tbody>
</table>
        
        
        
          
          
        </div>
      </div>
    </div>


		 <!-- Modal -->
 <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form action="" method="post" id="addForm" autocomplete="off">
              
              <div class="modal-header">
                <h4 class="modal-title">添加</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" placeholder="儿童姓名" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" name="sex" class="form-control" placeholder="儿童性别" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" name="age" class="form-control" placeholder="儿童年龄" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" name="guomin" class="form-control" placeholder="过敏药物" />
                </div>
               
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                <button class="btn btn-theme" type="submit">添加</button>
              </div>
              </form>
            </div>
          </div>
        </div>
        <!-- modal -->
        
        
		 <!-- Modal -->
 <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="updateModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form action="" method="post" id="updateForm" autocomplete="off">
              <input type="hidden" id="id" name="id"/>
              <div class="modal-header">
                <h4 class="modal-title">修改</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <input type="text" id="name" name="name" class="form-control" placeholder="儿童姓名" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" id="sex" name="sex" class="form-control" placeholder="儿童性别" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" id="age" name="age" class="form-control" placeholder="儿童年龄" required/>
                </div>
                
                <div class="form-group">
                  <input type="text" id="guomin" name="guomin" class="form-control" placeholder="过敏药物" />
                </div>
               
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                <button class="btn btn-theme" type="submit">修改</button>
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
	<script src="<%=Const.QIAN %>wangEditor/wangEditor.js"></script>
    <script src="<%=Const.QIAN %>js/main.js"></script>
	<script>
	
	function del(id){
		$.getJSON("<%=Const.QIAN %>children/delete",{"id":id},function(data){
			if(data.code=="0"){
    			location.href="<%=Const.QIAN %>children/list";
    		}else{
      			alert(data.msg);
      		}
		})
	}
	
	function add(){
		$("#addModal").modal("show");
	}
	$("#addForm").submit(function(){
		$.getJSON("<%=Const.QIAN %>children/add",$("#addForm").serialize(),function(data){
			if(data.code=="0"){
    			location.href="<%=Const.QIAN %>children/list";
    		}else{
      			alert(data.msg);
      		}
		});
	});
	
	function update(id){
		$.getJSON("<%=Const.QIAN %>children/json",{"id":id},function(data){
			$("#id").val(id);
			$("#name").val(data.name);
			$("#sex").val(data.sex);
			$("#age").val(data.age);
			$("#guomin").val(data.guomin);
			$("#updateModal").modal("show");
		});
	}
	$("#updateForm").submit(function(){
		$.getJSON("<%=Const.QIAN %>children/update",$("#updateForm").serialize(),function(data){
			if(data.code=="0"){
    			location.href="<%=Const.QIAN %>children/list";
    		}else{
      			alert(data.msg);
      		}
		});
	});
	
	

	
	
	</script>
  </body>

</html>

