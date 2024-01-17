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
 
  
      
      <div class="hero" style="background-image: url('<%=Const.QIAN %>images/hero_1_a.jpg');">
        
        <div class="container">
          <div class="row align-items-center justify-content-center">
            <div class="col-lg-10">

              <div class="row mb-5">
                <div class="col-lg-7 intro">
                  <h1><strong>疫苗</strong> 搜索</h1>
                </div>
              </div>
              
              <form class="trip-form" style="width:732.5px" action="" id="searchForm" method="post">
                <input type="hidden" name="page" id="page" value="1"/>
                <div class="row align-items-center">
                  
                  <div class="mb-3 mb-md-0 col-md-3" >
                    <select name="tid" class="custom-select form-control" style="width:178px" >
                      <option value="-1">全部疫苗</option>
                      <c:forEach items="${yimiaotype }" var="l" varStatus="st">
                      
                      <option value="${l.id }" <c:if test="${tid==l.id }"> selected </c:if>>${l.name }</option>
                      </c:forEach>
                    </select>
                  </div>
                  <div class="mb-3 mb-md-0 col-md-3">
                    <div class="form-control-wrap">
                      <input type="text" id="" name="name" value="${name }" placeholder="名称" class="form-control px-3" style="width:178px;margin-left:50px">
                    </div>
                  </div>
                  <div class="mb-3 mb-md-0 col-md-3">
                   <input type="submit" id="sousuo" value="搜索" class="btn btn-primary btn-block py-3" style="width:178px;margin-left:90px">
                  </div>
                </div>
                
              </form>

            </div>
          </div>
        </div>
      </div>
  

    <div class="site-section bg-light">
      <div class="container">
        <div class="row">
          <div class="col-lg-7">
            <h2 class="section-heading"><strong>疫苗列表</strong></h2>
            <p class="mb-5"></p>    
          </div>
        </div>
        

        <div class="row">
			<!--循环遍历-->
			<c:forEach items="${yimiaoList }" var="v" varStatus="st">
			
          <div class="col-md-6 col-lg-4 mb-4">

            <div class="listing d-block  align-items-stretch">
              <div class="listing-img h-100 mr-4">
                <a href="<%=Const.QIAN %>yimiao/view?id=${v.id }">
                <img src="<%=Const.QIAN %>images/${v.pic }" style="height:207px" alt="Image" class="img-fluid">
                </a>
              </div>
              <div class="listing-contents h-100">
                <h3>${v.name }</h3>
                
                <div class="d-block d-md-flex mb-3 border-bottom pb-3">
                  <div class="listing-feature pr-4">
                    <span class="caption">生产编号:</span>
                    <span class="number"></br>${v.no }</span>
                  </div>
                  <div class="listing-feature pr-4">
                    <span class="caption">类型:</span>
                    <span class="number"></br>${v.yimiaotype.name }</span>
                  </div>
                  <div class="listing-feature pr-4">
                    <span class="caption">价格:</span>
                    <span class="number" style="color: #0779e4"></br>${v.price }</span>元
                  </div>
                </div>
                
              </div>
              <div>
                  <p><a href="<%=Const.QIAN %>yimiao/view?id=${v.id }" class="btn btn-primary btn-sm">疫苗详情</a></p>
                </div>

            </div>
          </div>
          
         </c:forEach> 
<!--循环遍历-->

          </div>
<!--分页-->
	<div class="row">
          <div class="col-5">
            <div class="custom-pagination">
              <a href="#" onClick="goPage(${pageBean.prevPage})" style="color:#fff;cursor:pointer">&lt;&lt;</a>
            	  共${pageBean.totalCount }个    ${pageBean.pageNo }/${pageBean.totalPage }页
              <a href="#" onClick="goPage(${pageBean.nextPage})" style="color:#fff;cursor:pointer">&gt;&gt;</a>
            </div>
          </div>
        </div>
		
		
        </div>
      </div>


    <%@include file="commons/down.jsp" %>

</div>
    <script src="<%=Const.ROOT %>lib/jquery/jquery.min.js"></script>
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
	function goPage(page){
		document.getElementById("page").value=page;
		document.getElementById("searchForm").submit();
	}
	
	var index=localStorage.getItem("index");
	if(!index){
		index=1;
	}
	$(".hero").css("background-image","url(<%=Const.QIAN %>images/hero_"+index+"_a.jpg)");
	
	$(function(){
		var int=self.setInterval("changeZt()",5000);
	})
	
	function changeZt(){
		index++;
		if(index>=4){
			index=1;
		}
		localStorage.setItem("index",index);
		$(".hero").css("background-image","url(<%=Const.QIAN %>images/hero_"+index+"_a.jpg)");
	}
	
	</script>
</body>

</html>

