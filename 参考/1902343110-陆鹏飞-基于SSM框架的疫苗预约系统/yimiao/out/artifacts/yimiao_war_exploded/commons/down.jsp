<%@page import="cn.util.Const"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<div class="site-section bg-primary py-5" >
      <div class="container">
        <div class="row align-items-center">
          <div class="col-lg-7 mb-4 mb-md-0">
            <h2 class="mb-0 text-white">Copyright &copy;<script>document.write(new Date().getFullYear());</script> </h2>
            <p class="mb-0 opa-7">疫苗预约接种系统</p>
          </div>
          <div class="col-lg-5 text-md-right">
            <a href="<%=Const.QIAN %>admin/login.jsp" class="btn btn-primary btn-white" ">后台管理</a>
          </div>
        </div>
      </div>
    </div>