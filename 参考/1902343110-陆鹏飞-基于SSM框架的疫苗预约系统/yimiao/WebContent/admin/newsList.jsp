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
              <i class="fa fa-angle-right"></i> 资讯管理 <button type="button" onclick="add()" class="btn btn-success"><i class="fa fa-plus"></i> 添加</button>
              <form action="" class="pull-right mail-src-position form-inline" id="searchForm" method="post">
              	<input type="hidden" name="page" id="page"/>
                <div class="input-append">
                 <input type="text" class="form-control" name="title" value="${title }" placeholder="标题">
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
		      <th>标题</th>
		      <th>资讯种类</th>
		      <th>发布时间</th>
		      <th>图片</th>
		      <th>操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${list }" var="d" varStatus="st">
            <tr>
              <td>${st.count }</td>
		      <td>${d.title }</td>
		      <td>${d.newstype.name }</td>
		      <td>${d.optime }</td>
		      <td><a href="<%=Const.QIAN%>images/${d.pic }" target="_blank"><img src="<%=Const.QIAN%>images/${d.pic }" style="width:100px"/></a></td>
		      
              <td>
              	<button class="btn btn-primary btn-xs" onclick="update('${d.id}')">修改</button>
              	<button class="btn btn-danger btn-xs" onclick="del(${d.id})"><i class="fa fa-trash-o "></i></button>
                
              	
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
  
  	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="addModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="addForm">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">请填写资讯信息</h4>
              </div>
              <div class="modal-body">
              
                <div class="form-group">
                <label class="col-sm-2 control-label">标题:</label>
			    <div class="col-sm-10">
			      <input type="text" name="title" class="form-control" required="required"/>
			    </div>	 
                </div>
                
                <div class="form-group">
                <label class="col-sm-2 control-label">资讯类型:</label>
			    <div class="col-sm-10">
			      <select id="tid1" class="form-control" name="tid" required="required"></select>
			    </div>	 
                </div>
                
               <div class="form-group">
                <label class="col-sm-2 control-label">图片:</label>
			    <div class="col-sm-10">
			       <input type="file" id="file1" class="form-control form-control-inline" name="file" onchange="uploadFile1()"/>
				   <input type="hidden" id="pic1" name="pic" />
			    </div>	 
                </div>
              
                <div class="form-group">
                <label class="col-sm-2 control-label">内容:</label>
			    <div class="col-sm-10">
			      <input id="content1" name="content" value="" type="hidden">
			    	<div id="editor1">
					</div>
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
        
        
        
  	<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="updateModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <form class="form-horizontal" action="" method="post" id="updateForm">
              <input type="hidden" id="u_id" name="id"/>
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">请编辑资讯信息</h4>
              </div>
              <div class="modal-body">
              
               <div class="form-group">
                <label class="col-sm-2 control-label">标题:</label>
			    <div class="col-sm-10">
			      <input type="text" id="u_title" name="title" class="form-control" required="required"/>
			    </div>	 
                </div>
                
                <div class="form-group">
                <label class="col-sm-2 control-label">资讯类型:</label>
			    <div class="col-sm-10">
			      <select id="tid2" class="form-control" name="tid" required="required"></select>
			    </div>	 
                </div>
                
               <div class="form-group">
                <label class="col-sm-2 control-label">图片:</label>
			    <div class="col-sm-10">
			       <input type="file" id="file2" class="form-control form-control-inline" name="file" onchange="uploadFile1()"/>
				   <input type="hidden" id="pic2" name="pic" />
			    </div>	 
                </div>
              
                <div class="form-group">
                <label class="col-sm-2 control-label">内容:</label>
			    <div class="col-sm-10">
			      <input id="content2" name="content" value="" type="hidden">
			    	<div id="editor2">
					</div>
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
  
  var E = window.wangEditor;
	var editor1 = new E('#editor1');
	editor1.customConfig.uploadFileName = 'file';
	editor1.customConfig.uploadImgServer = '<%=Const.QIAN %>upload';
	editor1.customConfig.onchange = function (html) {
		document.getElementById("content1").value=html;
	}
	editor1.create();
	
	var editor2 = new E('#editor2');
	editor2.customConfig.uploadFileName = 'file';
	editor2.customConfig.uploadImgServer = '<%=Const.QIAN %>upload';
	editor2.customConfig.onchange = function (html) {
		document.getElementById("content2").value=html;
	}
	editor2.create();
 
  
  function del(id){
	  if(confirm('是否删除?')){
		  $.getJSON("<%=Const.QIAN %>news/delete",{"id":id},function(data){
	    		if(data.code=="0"){
	    			location.href="<%=Const.QIAN %>news/list";
	    		}else{
	      			alert(data.msg);
	      		}
	    	});
	  }
  }
  
  function add(){
		$("#addModal").modal("show");
	  }
	  
	  $("#addForm").submit(function(){
		  	$.getJSON("<%=Const.QIAN %>news/add",$("#addForm").serialize(),function(data){
		  		if(data.code=="0"){
		  			location.href="<%=Const.QIAN %>news/list";
		  		}else{
		  			alert(data.msg);
		  		}
		  	});
		  	return false;
	  });
  
  function update(id){
	  $.getJSON("<%=Const.QIAN %>news/json",{"id":id},function(data){
		  console.log(data);
		  $("#u_id").val(id);
		  $("#u_title").val(data.title);
		  $("#tid2").val(data.tid);
		  $("#u_optime").val(data.optime);
		  $("#content2").val(data.content);
		  editor2.txt.html(data.content);
		  $("#pic2").val(data.pic);
		  $("#updateModal").modal("show");
	  });
  }
  $("#updateForm").submit(function(){
	  $.getJSON("<%=Const.QIAN %>news/update",$("#updateForm").serialize(),function(data){
		  if(data.code=="0"){
				location.href="<%=Const.QIAN %>news/list";
			}else{
  			alert(data.msg);
  		}
	  });
  });
 
	//上传文件
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
	    				  $("#pic1").val($(data).find("body").text());
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
	//上传文件
	    function uploadFile2(){
	    	  if($("#file2").val()==""){
	    		  alert("请先选择文件!");
	    	  }else{
	    	  $.ajaxFileUpload
	    		(
	    			{
	    				url: '<%=Const.QIAN%>upfile', //用于文件上传的服务器端请求地址
	    				secureuri: false, //是否需要安全协议，一般设置为false
	    				fileElementId: 'file2', //文件上传域的ID
	    				success: function (data, status)  //服务器成功响应处理函数
	    				{        	
	    				  $("#pic2").val($(data).find("body").text());
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
	
	    $(function(){
	  	  $.getJSON("<%=Const.QIAN%>newstype/jsonlist",function(data){
	  		  $("#tid1").html("<option value=''>请选择资讯类型</option>");
	  		  $("#tid2").html("<option value=''>请选择资讯类型</option>");
	  		  for(i=0;i<data.length;i++){
	  			  $("#tid1").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
	  			  $("#tid2").append("<option value='"+data[i].id+"'>"+data[i].name+"</option>");
	  		  }
	  	 });
	    });
	    
	
  </script>
</body>

</html>
