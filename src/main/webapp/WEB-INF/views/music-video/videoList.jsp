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
<style type="text/css">
.btn-block {
    width: 100px;
    display: block;
}

#upLoadVideo div{
	width: 300px;
	height:30px;
	line-height: 30px;
	margin-top:10px;
}
#upLoadVideo div input{
	width:20px;
	height:12px;
}
#upLoadVideo div font{
	margin-right:20px;
	margin-left:5px;
}
</style>
</head>
<body scroll=auto>
<div id="main_show_box">
		<div id="floor_1">
			<div id="floor_head">
				<span class="title_span">Video视频推荐</span>
			</div>
		</div>
		<form action="music/upLoadVideo" method="post" enctype="multipart/form-data" name="upLoadVideo" id="upLoadVideo">
			<input type="file" name="uploadvideo" id="uploadvideo" value="上传"/>
			<br>
			<font color="white">请选择上传音乐类型:</font>
			<br>
			<div>
				<input type="radio" name="videoType" value="breaking" checked="checked" /><font color="white">breaking</font> 
				<input type="radio" name="videoType" value="popping" /><font color="white">popping</font>
				<input type="radio" name="videoType" value="jazz" /> <font color="white">jazz</font>
				<input type="radio" name="videoType" value="hiphop" /> <font color="white">hiphop</font>
				<input type="radio" name="videoType" value="locking" /> <font color="white">locking</font>
			</div>
			<button type="submit" class="btn btn-primary btn-block btn-large">确定上传</button>
		</form>
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
					<a href="music/downloadvideo/${video.videoId }">下载</a></li>
					</c:forEach>
				<div style="clear: both;"></div>
			</ul>
		</div>
	</div>
	
	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
	<script type="text/javascript" src="${ctx}/resources/js/videoList.js"></script>
</body>
</html>