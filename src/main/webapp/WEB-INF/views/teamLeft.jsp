<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航</title>
<link rel="stylesheet"
	href="${ctx}/resources/bootstrapcss/bootstrap-theme.css" />
<link rel="stylesheet"
	href="${ctx}/resources/bootstrapcss/bootstrap-theme.min.css" />
<link rel="stylesheet"
	href="${ctx}/resources/bootstrapcss/bootstrap.min.css" />
<link rel="stylesheet"
	href="${ctx}/resources/bootstrapcss/bootstrap.css" />
<link rel="stylesheet" href="${ctx}/resources/css/userLeft.css" />


</head>
<body scroll=auto>
	<div class="head_box">
		<div id="head_wrap">
			<div id="head_nav">
				<a class="head_nav_a" href="${ctx}/user/index">Dance4Ever</a>
			</div>
			<div id="head_right">
<!-- 				<div id="head_landing"> -->
<!-- 					<a class="head_nav_a" href="" style="color: green">登陆</a> <span>|</span> -->
<!-- 					<a class="head_nav_a" href="" style="color: green">注册</a> <span>|</span> -->
<!-- 					<a class="head_nav_a" href="" style="color: green">用户中心</a> -->
<!-- 				</div> -->
			</div>
		</div>
	</div>
	<div class="low">
		<div id="main_head_box">
			<div id="menu_wrap">
				<div id="menu_logo">
					<img src="${ctx}/resources/images/dn.JPG" height="75" width="75">
				</div>
				<div id="menu_nav">
					<ul>
						<li class="menu_li" control="xiaomiphone">Keep</li>
						<li class="menu_li" control="hongmiphone">ON</li>
						<li class="menu_li" control="pingban">Dancing</li>
						<li class="menu_li" control="tv">Keep</li>
						<li class="menu_li" control="luyou">ON</li>
						<li class="menu_li" control="yingjian">Dancing</li>
					</ul>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row" style="margin-top: 50px;">
				<div class="col-sm-2">
					<!-- Nav tabs -->
					<ul class="nav nav-stacked" role="tablist" id="myTab">
						<li role="presentation" class="active"><a href="#teambasic"
							aria-controls="teambasic" role="tab" data-toggle="tab"><span>基本信息</span></a></li>
						<li id="testID" role="presentation"><a href="#teamer"
							aria-controls="teamer" role="tab" data-toggle="tab"><span>队员管理</span></a></li>

					</ul>
				</div>
				<div class="col-sm-10">
					<!-- Tab panes -->
					<div class="tab-content" id="myTabContent">
						<div role="tabpanel" class="tab-pane active" id="teambasic">
<%-- 							<%@ include file="team/teamMessage.jsp"%> --%>
						</div>
						<div role="tabpanel" class="tab-pane" id="teamer">
							<%-- 							<%@ include file="team/teamerList.jsp"%> --%>
<%-- 							<%@ include file="team/teamCenter.jsp"%> --%>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/npm.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/bootstrap.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>

	<script type="text/javascript">
	/*$(document).ready(function(){
		$("#testID").click(function(){
			$.post("teamCenter/getMember","",function(data){
				
				$("#teamer").html("");	
	
	
				$("#teamer").append(data);
			});
		});
	});*/
	
	$(document).ready(function(){
		
		$("#myTab li").on("click",function(){
			var id=$(this).find("a").attr("href").replace("#","");
			var url="";
			if(id=="teambasic") url="showDanceTeamMessage";
			else if(id=="teamer") url="getMember";
			
			$.post(url,"",function(data){
				$("#"+id+"").html("");
				$("#"+id+"").append(data);
			});	
		});
		$("#myTab li").each(function(){
			if($(this).attr("class")=="active"){
				$(this).click();
			}
			
		});
	});
		
	</script>
	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/npm.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/bootstrap.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/bootstrapjs/bootstrap.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
	<script type="text/javascript"
		src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
</body>
</html>