<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>视频管理</title>
<link rel="stylesheet" href="${ctx}/resources/css/userLeft.css" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
</head>
<body scroll=auto>
<div id="main_show_box">
		<div id="floor_1">
			<div id="floor_head">
				<span class="title_span">Video视频推荐</span>
			</div>
		</div>
		<div>
			<input type="file" name="uploadmusic" id="uploadmusic" value="上传视频" />
		</div>
		<div>
		<br>
		</div>
		<div class="floor_goods_wrap">
			<ul>
				
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T1odEjB5bT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米智能家庭套装</a>
					<a class="floor_goods_txt">3分钟快速安装，30多种智能玩法</a> <a
					class="floor_goods_price">199元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T1JKxvBXhv1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米随身WIFI
						8GB U盘版</a> <a class="floor_goods_txt">随身上网神器，内置8GB U盘</a> <a
					class="floor_goods_price">49.9元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T18yZQBCET1RXrhCrK.jpg"></a> <a class="floor_goods_tit">小蚁智能摄像机</a>
					<a class="floor_goods_txt">能看能听能说，手机远程观看</a> <a
					class="floor_goods_price">149元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T1YoZQByYT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米体重称</a>
					<a class="floor_goods_txt">高精度压力传感器 ｜ 手机管理全家健康</a> <a
					class="floor_goods_price">99元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T16nVjBCKT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">小蚁运动机</a>
					<a class="floor_goods_txt">边玩边录边拍，手机随时分享</a> <a
					class="floor_goods_price">399元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T18zWQB4WT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米路由器
						mini</a> <a class="floor_goods_txt">主流双频AC智能路由器，性价比之王</a> <a
					class="floor_goods_price">129元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T1oixjB5bT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米智能插座</a>
					<a class="floor_goods_txt">手机远程遥控开关，带USB接口</a> <a
					class="floor_goods_price">59元</a></li>
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/T1KzbQBvbT1RXrhCrK.jpg"></a> <a class="floor_goods_tit">大米水质TDS检测笔</a>
					<a class="floor_goods_txt">准确检测家中水质纯度</a> <a
					class="floor_goods_price">39元</a></li>
				<div style="clear: both;"></div>
			</ul>
		</div>
	</div>
	
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/videoList.js"></script>
</body>
</html>