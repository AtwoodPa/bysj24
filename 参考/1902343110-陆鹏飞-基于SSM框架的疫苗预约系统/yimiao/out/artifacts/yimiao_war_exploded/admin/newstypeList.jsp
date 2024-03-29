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
	<c:if test="${sessionScope.role==0 }">
      <!--管理员-->
      <section class="wrapper">
        <div class="row mt">
        <div class="col-md-12">
          <div class="content-panel">
            <h4>
              <i class="fa fa-angle-right"></i> 资讯类型管理  <button type="button" onclick="add()" class="btn btn-success"><i class="fa fa-plus"></i> 添加</button>
              <form action="" class="pull-right mail-src-position form-inline" id="searchForm" method="post">
              	<input type="hidden" name="page" id="page"/>
                <div class="input-append">
                  <input type="text" class="form-control" name="name" value="${name }" placeholder="名称">
                  <button type="submit" class="btn btn-theme02">搜索</button>
                </div>
              </form>
            </h4>
            <hr>
            <ul class="unstyled inbox-pagination">
              <li><span>第${pageBean.pageNo}页 / 共${pageBean.totalPage}页</span></li>
              <li>
                <a class="np-btn" href="javascript:goPage(${pageBean.prevPage })"><i class="fa fa-angle-left  pagination-left"></i></a>
              </li>
              <li>
                <a class="np-btn" href="javascript:goPage(${pageBean.nextPage })"><i class="fa fa-angle-right pagination-right"></i></a>
              </li>
            </ul>
            <table class="table table-striped table-advance table-hover">
            <thead>
            <tr>
              <th>编号</th>
              <th>名称</th>
              <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="v" varStatus="st">
            <tr>
              <td>${st.count }</td>
              <td>${v.name }</td>
              <td>
              	<button class="btn btn-primary btn-xs" onclick="update('${v.id}')">修改</button>
                <button class="btn btn-danger btn-xs" onclick="del('${v.id}')">删除</button>
              </td>
            </tr>
            </c:forEach>
            </tbody>
          </table>
          </div>
          <!-- /content-panel -->
        </div>
      </div>
      </section>
      </c:if>
    <!--main content end-->
  </section>
  </section>
  
  
     <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form action="" method="post" id="addForm">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">类型添加---请填写以下资料</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <input type="text" name="name" class="form-control" placeholder="名称" required/>
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
  
   <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="updateModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form action="" method="post" id="updateForm">
              <input type="hidden" id="u_id" name="id"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">类型编辑---请填写以下资料</h4>
              </div>
              <div class="modal-body">
                <div class="form-group">
                  <input type="text" id="u_name" name="name" class="form-control" placeholder="名称" required/>
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
  
  
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script>
  <script src="<%=Const.ROOT %>lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Const.ROOT %>lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="<%=Const.ROOT %>lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="<%=Const.ROOT %>lib/common-scripts.js"></script>
  <script>

  function add(){
	$("#addModal").modal("show");
  }
  
  $("#addForm").submit(function(){
	  	$.getJSON("<%=Const.QIAN %>newstype/add",$("#addForm").serialize(),function(data){
	  		if(data.code=="0"){
	  			location.href="<%=Const.QIAN %>newstype/list";
	  		}else{
	  			alert(data.msg);
	  		}
	  	});
	  	return false;
  });
  //修改
  function update(id){
	 $.getJSON("<%=Const.QIAN %>newstype/json",{"id":id},function(data){
  		$("#u_id").val(data.id);
  		$("#u_name").val(data.name);
  		$("#updateModal").modal("show");
  	}); 
  }
  //修改
  $("#updateForm").submit(function(){
  	$.getJSON("<%=Const.QIAN %>newstype/update",$("#updateForm").serialize(),function(data){
  		if(data.code=="0"){
  			location.href="<%=Const.QIAN %>newstype/list";
  		}else{
  			alert(data.msg);
  		}
  	});
  	return false;
  });
  
  function del(id){
	  if(confirm('是否删除?')){
		  $.getJSON("<%=Const.QIAN %>newstype/delete",{"id":id},function(data){
	    		if(data.code=="0"){
	    			location.href="<%=Const.QIAN %>newstype/list";
	    		}else{
	      			alert(data.msg);
	      		}
	    	});
	  }
  }
  </script>
</body>

</html>
