<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head lang="en">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>音乐管理</title>
<link rel="stylesheet" href="${ctx}/resources/css/userLeft.css" />
<script type="text/javascript"
	src="${ctx}/resources/js/jquery-2.1.4.min.js"></script>
<script type="text/javascript"
	src="${ctx}/resources/js/jquery.animate-colors-min.js"></script>
<style type="text/css">
.btn-block {
    width: 100px;
    margin-top:40px;
    display: block;
}

#upLoadMusic div{
	width: 290px;
	height:30px;
	line-height: 30px;
	margin-top:10px;
}
#upLoadMusic div input{
	width:20px;
	height:12px;
}
#upLoadMusic div font{
	margin-right:20px;
	margin-left:5px;
}

</style>
</head>
<body scroll=auto>
	<div id="head_hot_goods_wrap">
		<div id="head_hot_goods_title">
			<span class="title_span"><font color="white">Music音乐推荐</font></span>
		</div>
		<form action="music/upLoadMusic" method="post" enctype="multipart/form-data" name="upLoadMusic" id="upLoadMusic">
			<input type="file" name="uploadmusic" id="uploadmusic" />
			<br>
			<font color="white">请选择上传音乐类型:</font>
			<br>
			<div>
				<input type="radio" name="musicType" value="breaking" checked="checked" /><font color="white">breaking</font> 
				<input type="radio" name="musicType" value="popping" /><font color="white">popping</font>
				<input type="radio" name="musicType" value="jazz" /> <font color="white">jazz</font>
				<input type="radio" name="musicType" value="hiphop" /> <font color="white">hiphop</font>
				<input type="radio" name="musicType" value="locking" /> <font color="white">locking</font>
			</div>
			<button type="submit" class="btn btn-primary btn-block btn-large">确定上传</button>
		
		</form>
		<div>
		<br>
		</div>
		
		<div id="head_hot_goods_content">
			<ul>
				<c:forEach items="${mlist}" var="music">
					<li><a><img src="${ctx}/resources/images/${music.musicType}160.jpg"
						height="160" width="160"></a> <a>${music.musicName}</a> <a>${music.musicType}</a>
						<a href="music/download/${music.musicId }">下载</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
</body>
</html>