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
    
      <section class="wrapper">
        <div class="row mt">
        <div class="col-md-12">
          <div class="content-panel">
            <h4>
              <i class="fa fa-angle-right"></i> 订单管理
              <form action="" class="pull-right mail-src-position form-inline" id="searchForm" method="post">
              	<input type="hidden" name="page" id="page"/>
                <div class="input-append">
                 <input type="text" class="form-control" name="no" value="${no }" placeholder="预约码">
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
		      <th>接种码</th>
		      <th>预约人</th>
		      <th>接种人</th>
		      <th>过敏药物</th>
		      <th>疫苗名称</th>
		      <th>预约时间</th>
		      <th>状态</th>
		      <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="d" varStatus="st">
            <tr>
              <td>${st.count }</td>
		      <td>${d.no }</td>
		      <td>${d.user.name }</td>
		      <td>${d.children.name }</td>
		      <td>${d.children.guomin }</td>
		      <td>${d.yimiao.name }</td>
		      <td>${d.time }</td>
		      <td>${d.status }</td>
              <td>
              	<c:if test="${sessionScope.role==1 and d.status=='已预约' }">
              		<button class="btn btn-primary btn-xs" onclick="update(${d.id})">完成接种</button>
             	</c:if>
              	
              	<c:if test="${d.status=='已接种' }">
                	<button class="btn btn-danger btn-xs" onclick="del(${d.id})"><i class="fa fa-trash-o "></i></button>
                </c:if>
              	<c:if test="${d.status=='已接种' and d.bak1!='记录已添加' and sessionScope.role==1 }">
                	<button class="btn btn-link btn-xs" onclick="jilu(${d.id})">添加接种记录</button>
                </c:if>
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
    <!--main content end-->
  </section>
  
  	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="jiluModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="jiluForm">
              <input type="hidden" id="oid" name="oid"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">请填写记录信息</h4>
              </div>
              <div class="modal-body">
              
              <div class="form-group">
                <label class="col-sm-2 control-label">接种位置:</label>
			    <div class="col-sm-10">
			        <input type="text" id="position" name="position" class="form-control" required/>
			    </div>
                </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label">接种方式:</label>
			    <div class="col-sm-10">
			        <input type="text" id="mode" name="mode" class="form-control" required/>
			    </div>
                </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label">医生:</label>
			    <div class="col-sm-10">
			        <input type="text" id="doctor" name="doctor" class="form-control" required/>
			    </div>
                </div>
              
              
                
 				</div>
              <div class="modal-footer">
              	 <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                 <button class="btn btn-theme" type="submit" >提交</button>
              </div>
              </form>
            </div>
          </div>
        </div>
  
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script>
  <script src="<%=Const.ROOT %>lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="<%=Const.ROOT %>lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.scrollTo.min.js"></script>
  <script src="<%=Const.ROOT %>lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script src="<%=Const.ROOT %>lib/jquery.sparkline.js"></script>
  <!--common script for all pages-->
  <script src="<%=Const.ROOT %>lib/common-scripts.js"></script>
  <script src="<%=Const.QIAN %>My97DatePicker/WdatePicker.js"></script>
  <script src="<%=Const.QIAN %>wangEditor/wangEditor.js"></script>
  <script src="<%=Const.ROOT %>lib/ajaxfileupload.js"></script>
  <script>
  function update(id){
	  if(confirm('是否完成接种?')){
		  $.getJSON("<%=Const.QIAN %>orders/update",{"id":id,"status":"已接种"},function(data){
			  if(data.code=="0" ){
				  alert("操作成功!");
				  location.href='<%=Const.QIAN %>orders/list';	
			  }else{
				  alert(data);
			  }
		  });
	  }
  }
  
  function del(id){
	  if(confirm('是否删除?')){
		  $.getJSON("<%=Const.QIAN %>orders/delete",{"id":id},function(data){
	    		if(data.code=="0"){
	    			location.href="<%=Const.QIAN %>orders/list";
	    		}else{
	      			alert(data.msg);
	      		}
	    	});
	  }
  }
  
  function jilu(oid){
  		$("#jiluModal").modal("show");
  		$("#oid").val(oid);
  }
  $("#jiluForm").submit(function(){
	  $.getJSON("<%=Const.QIAN %>record/add",$("#jiluForm").serialize(),function(data){
			  if(data.code=="0"){
	  				location.href="<%=Const.QIAN %>record/list";
	  			}else{
	    			alert(data.msg);
	    		}
	  });
  });
  
	
  
  </script>
</body>

</html>
