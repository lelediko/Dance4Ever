<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<title>Insert title here</title>
<link rel="stylesheet" href="${ctx}/resources/css/userLeft.css" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
</head>
<body scroll=auto>
	<div id="head_hot_goods_wrap">
		<div id="head_hot_goods_title">
			<span class="title_span"><font color="white">Music音乐收藏</font></span>
		</div>
		<div>
		<br>
		</div>
		
		<div id="head_hot_goods_content">
			<ul>
				<c:forEach items="${mlist}" var="music">
					<li><a><img src="${ctx}/resources/images/${music.musicType}160.jpg"
						height="160" width="160"></a> <a>${music.musicName}</a> <a>${music.musicType}</a>
						<a href="music/download/${music.musicId }">下载</a>
						<a href="music/deleteLoveMusic/${music.musicId }">取消收藏</a>
						</li>
				</c:forEach>
			</ul>
		</div>
	</div>

<div id="main_show_box">
		<div id="floor_1">
			<div id="floor_head">
				<span class="title_span"><font color="white">Video视频收藏</font></span>
			</div>
		</div>
		<div>
		<br>
		</div>
		<div class="floor_goods_wrap">
			<ul>
				<c:forEach items="${vlist }" var="video">
				<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
						src="${ctx}/resources/images/${video.videoType}160x160.jpg" height="220" width="230"></a> 
						<a class="floor_goods_tit">${video.videoName}</a>
					<a class="floor_goods_txt">${video.videoType}</a>
					<a href="music/downloadvideo/${video.videoId }">下载</a>
					<a href="music/deleteLoveVideo/${video.videoId }">取消收藏</a></li>
					</c:forEach>
				<div style="clear: both;"></div>
			</ul>
		</div>
	</div>
	
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/videoList.js"></script>
</body>
</html>