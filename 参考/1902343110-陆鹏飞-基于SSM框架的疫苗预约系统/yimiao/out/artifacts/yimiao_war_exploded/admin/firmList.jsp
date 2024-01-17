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
              <i class="fa fa-angle-right"></i> 疫苗厂家管理  <button type="button" onclick="add()" class="btn btn-success"><i class="fa fa-plus"></i> 添加</button>
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
              <th>图片</th>
              <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="v" varStatus="st">
            <tr>
              <td>${st.count }</td>
              <td>${v.name }</td>
              <td><a href="<%=Const.QIAN%>images/${v.pic }" target="_blank"><img src="<%=Const.QIAN %>images/${v.pic }" style="width:100px"/></a></td>
              
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
  
  
    
        
        <!-- modal -->
 		<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="addForm">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">厂家添加---请填写以下资料</h4>
              </div>
              <div class="modal-body">
              
            <div class="form-group">
                <label class="col-sm-2 control-label">名称:</label>
			    <div class="col-sm-10">
			        <input type="text" name="name" class="form-control form-control-inline" required/>
			    </div>
                </div>
                
            <div class="form-group">
                <label class="col-sm-2 control-label">图片:</label>
			    <div class="col-sm-10">
			        <input type="file" id="file" class="form-control form-control-inline" name="file" onchange="uploadFile()"/>
					<input type="hidden" id="pic" name="pic" />
			    </div>
                </div>
                
                <div class="form-group">
                <label class="col-sm-2 control-label">描述:</label>
			    <div class="col-sm-10">
			      <input id="content" name="content" value="" type="hidden">
			    	<div id="editor">
					</div>
			    </div>	 
                </div>
                
                </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                <button class="btn btn-theme" type="submit">保存</button>
              </div>
              </form>
            </div>
          </div>
        </div>
        <!-- modal -->
        
        
        
        
        <!-- modal -->
 		<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="updateModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="updateForm">
              <input type="hidden" id="u_id" name="id"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
               <h4 class="modal-title">厂家编辑---请填写以下资料</h4>
              </div>
              <div class="modal-body">
              
              <div class="form-group">
                <label class="col-sm-2 control-label">名称:</label>
			    <div class="col-sm-10">
			        <input type="text" id="u_name" name="name" class="form-control form-control-inline" required/>
			    </div>
                </div>
              
              <div class="form-group">
                <label class="col-sm-2 control-label">图片:</label>
			    <div class="col-sm-10">
			        <input type="file" id="file1" class="form-control form-control-inline" name="file" onchange="uploadFile1()"/>
					<input type="hidden" id="u_pic" name="pic" />
			    </div>
                </div>
                
                <div class="form-group">
                <label class="col-sm-2 control-label">描述:</label>
			    <div class="col-sm-10">
			      <input id="content1" name="content" value="" type="hidden">
			    	<div id="editor1">
					</div>
			    </div>	 
                </div>
                
                </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">取消</button>
                <button class="btn btn-theme" type="submit">保存</button>
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
  <script src="<%=Const.ROOT %>lib/ajaxfileupload.js"></script>
  <script src="<%=Const.QIAN %>wangEditor/wangEditor.js"></script>
  <script>

  function add(){
	$("#addModal").modal("show");
  }
  
  $("#addForm").submit(function(){
	  	$.getJSON("<%=Const.QIAN %>firm/add",$("#addForm").serialize(),function(data){
	  		if(data.code=="0"){
	  			location.href="<%=Const.QIAN %>firm/list";
	  		}else{
	  			alert(data.msg);
	  		}
	  	});
	  	return false;
  });
  //修改
  function update(id){
	 $.getJSON("<%=Const.QIAN %>firm/json",{"id":id},function(data){
  		$("#u_id").val(data.id);
  		$("#u_name").val(data.name);
  		$("#u_pic").val(data.pic);
  		$("#content1").val(data.content);
		   editor1.txt.html(data.content);
  		$("#updateModal").modal("show");
  	}); 
  }
  //修改
  $("#updateForm").submit(function(){
  	$.getJSON("<%=Const.QIAN %>firm/update",$("#updateForm").serialize(),function(data){
  		if(data.code=="0"){
  			location.href="<%=Const.QIAN %>firm/list";
  		}else{
  			alert(data.msg);
  		}
  	});
  	return false;
  });
  
  function del(id){
	  if(confirm('是否删除?')){
		  $.getJSON("<%=Const.QIAN %>firm/delete",{"id":id},function(data){
	    		if(data.code=="0"){
	    			location.href="<%=Const.QIAN %>firm/list";
	    		}else{
	      			alert(data.msg);
	      		}
	    	});
	  }
  }
  
  
  var E = window.wangEditor;
	
	var editor = new E('#editor');
	editor.customConfig.uploadFileName = 'file';
	editor.customConfig.uploadImgServer = '<%=Const.QIAN %>upload';
	editor.customConfig.onchange = function (html) {
		document.getElementById("content").value=html;
	}
	editor.create();
	var editor1 = new E('#editor1');
	editor1.customConfig.uploadFileName = 'file';
	editor1.customConfig.uploadImgServer = '<%=Const.QIAN %>upload';
	editor1.customConfig.onchange = function (html) {
		document.getElementById("content1").value=html;
	}
	editor1.create();

//上传文件
function uploadFile(){
	  if($("#file").val()==""){
		  alert("请先选择文件!");
	  }else{
	  $.ajaxFileUpload
		(
			{
				url: '<%=Const.QIAN%>upfile', //用于文件上传的服务器端请求地址
				secureuri: false, //是否需要安全协议，一般设置为false
				fileElementId: 'file', //文件上传域的ID
				success: function (data, status)  //服务器成功响应处理函数
				{        	
				  $("#pic").val($(data).find("body").text());
				  alert("上传成功，请点击保存！");
				},
				error: function (data, status, e)//服务器响应失败处理函数
				{
					alert("上传失败!");
				}
			}
		);
	  }
	return false;
}

function uploadFile1(){
	  if($("#file1").val()==""){
		  alert("请先选择文件!");
	  }else{
	  $.ajaxFileUpload
		(
			{
				url: '<%=Const.QIAN%>upfile', //用于文件上传的服务器端请求地址
				secureuri: false, //是否需要安全协议，一般设置为false
				fileElementId: 'file1', //文件上传域的ID
				success: function (data, status)  //服务器成功响应处理函数
				{        	
				  $("#u_pic").val($(data).find("body").text());
				  alert("上传成功，请点击保存！");
				},
				error: function (data, status, e)//服务器响应失败处理函数
				{
					alert("上传失败!");
				}
			}
		);
	  }
	return false;
}
  
  
  
  </script>
</body>

</html>
