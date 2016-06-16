<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<title>Insert title here</title>

<style type="text/css">
.btn {
	display: inline-block;
	*display: inline;
	*zoom: 1;
	padding: 4px 10px 4px;
	margin-bottom: 0;
	font-size: 13px;
	line-height: 18px;
	color: #333333;
	text-align: center;
	text-shadow: 0 1px 1px rgba(255, 255, 255, 0.75);
	vertical-align: middle;
	background-color: #f5f5f5;
	background-image: -moz-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -ms-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#ffffff),
		to(#e6e6e6));
	background-image: -webkit-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: -o-linear-gradient(top, #ffffff, #e6e6e6);
	background-image: linear-gradient(top, #ffffff, #e6e6e6);
	background-repeat: repeat-x;
	filter: progid:dximagetransform.microsoft.gradient(startColorstr=#ffffff,
		endColorstr=#e6e6e6, GradientType=0);
	border-color: #e6e6e6 #e6e6e6 #e6e6e6;
	border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
	border: 1px solid #e6e6e6;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	-moz-box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.05);
	cursor: pointer;
	*margin-left: .3em;
}

body {
	width: 100%;
	height: 100%;
	font-family: 'Open Sans', sans-serif;
	background: #092756;
	background: -moz-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-moz-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-moz-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-webkit-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-webkit-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -o-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-o-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-o-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -ms-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		-ms-linear-gradient(top, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		-ms-linear-gradient(-45deg, #670d10 0%, #092756 100%);
	background: -webkit-radial-gradient(0% 100%, ellipse cover, rgba(104, 128, 138, .4)
		10%, rgba(138, 114, 76, 0) 40%),
		linear-gradient(to bottom, rgba(57, 173, 219, .25) 0%,
		rgba(42, 60, 87, .4) 100%),
		linear-gradient(135deg, #670d10 0%, #092756 100%);
	filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#3E1D6D',
		endColorstr='#092756', GradientType=1);
}

.btn:hover, .btn:active, .btn.active, .btn.disabled, .btn[disabled] {
	background-color: #e6e6e6;
}

.btn-large {
	padding: 9px 14px;
	font-size: 15px;
	line-height: normal;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
}

.btn:hover {
	color: #333333;
	text-decoration: none;
	background-color: #e6e6e6;
	background-position: 0 -15px;
	-webkit-transition: background-position 0.1s linear;
	-moz-transition: background-position 0.1s linear;
	-ms-transition: background-position 0.1s linear;
	-o-transition: background-position 0.1s linear;
	transition: background-position 0.1s linear;
}

.btn-primary, .btn-primary:hover {
	text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25);
	color: #ffffff;
}

.btn-primary.active {
	color: rgba(255, 255, 255, 0.75);
}

.btn-primary {
	background-color: #4a77d4;
	background-image: -moz-linear-gradient(top, #6eb6de, #4a77d4);
	background-image: -ms-linear-gradient(top, #6eb6de, #4a77d4);
	background-image: -webkit-gradient(linear, 0 0, 0 100%, from(#6eb6de),
		to(#4a77d4));
	background-image: -webkit-linear-gradient(top, #6eb6de, #4a77d4);
	background-image: -o-linear-gradient(top, #6eb6de, #4a77d4);
	background-image: linear-gradient(top, #6eb6de, #4a77d4);
	background-repeat: repeat-x;
	filter: progid:dximagetransform.microsoft.gradient(startColorstr=#6eb6de,
		endColorstr=#4a77d4, GradientType=0);
	border: 1px solid #3762bc;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.4);
	box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px
		rgba(0, 0, 0, 0.5);
}

.btn-primary:hover, .btn-primary:active, .btn-primary.active,
	.btn-primary.disabled, .btn-primary[disabled] {
	filter: none;
	background-color: #4a77d4;
}

.btn-block {
	width: 100%;
	display: block;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	-ms-box-sizing: border-box;
	-o-box-sizing: border-box;
	box-sizing: border-box;
}

html {
	width: 100%;
	height: 100%;
	/* 	overflow: hidden; */
}

input {
	width: 300px;
	height: 30px;
	margin-top: 10px;
	background: rgba(0, 0, 0, 0.3);
	outline: none;
	padding: 20px;
	font-size: 30px;
	color: #fff;
	text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.3);
	border: 1px solid rgba(0, 0, 0, 0.3);
	border-radius: 5px;
	box-shadow: inset 0 -5px 45px rgba(100, 100, 100, 0.2), 0 1px 1px
		rgba(255, 255, 255, 0.2);
	-webkit-transition: box-shadow .5s ease;
	-moz-transition: box-shadow .5s ease;
	-o-transition: box-shadow .5s ease;
	-ms-transition: box-shadow .5s ease;
	transition: box-shadow .5s ease;
}

input:focus {
	box-shadow: inset 0 -5px 45px rgba(100, 100, 100, 0.4), 0 1px 1px
		rgba(255, 255, 255, 0.2);
}

.users {
	position: absolute;
	top: 10%;
	left: 50%;
	margin: -150px 0 0 -150px;
	width: 300px;
	height: 300px;
}

#head_hot_goods_wrap {
	margin-top: 380px;
}
</style>
</head>
<body scroll=auto>
	<div class="users">
		<div align="center">
			<font color="white" size="6">舞团信息</font>
		</div>
		<div align="center">
			<form method="post">
				<input type="text" name="danceTeamName" placeholder="舞团名"
					required="required" value="${danceTeam.danceTeamName }" /><br>
				<input type="text" name="danceTeamCity" placeholder="来自城市"
					required="required" value="${danceTeam.danceTeamCity }" /><br>
				<input type="text" name="danceTeamCreateTime" placeholder="成立时间"
					required="required" value="${danceTeam.danceTeamCreateTime }" /><br>
				<input type="text" name="danceTeamPersonNum" placeholder="人数"
					required="required" value="${danceTeam.danceTeamPersonNum }" /><br>
				<input type="text" name="danceTeamIntro" placeholder="简介"
					required="required" value="${danceTeam.danceTeamIntro }" /><br>
				<input type="text" name="roleNote" placeholder="我的职位"
					required="required" value="${role1.roleNote }" /><br> <a
					href="outTeam">退出舞团</a>
			</form>
		</div>
	</div>

	<div id="head_hot_goods_wrap">
		<div id="head_hot_goods_title">
			<span class="title_span"><font color="white">Music舞团音乐</font></span>
		</div>
		<div>
			<br>
		</div>

		<div id="head_hot_goods_content">
			<ul>
				<c:forEach items="${mlist}" var="music">
					<li><a><img
							src="${ctx}/resources/images/${music.musicType}160.jpg"
							height="160" width="160"></a> <a>${music.musicName}</a> <a>${music.musicType}</a>
						<a href="music/download/${music.musicId }">下载</a> <a
						href="music/deleteLoveMusic/${music.musicId }">取消收藏</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<div id="main_show_box">
		<div id="floor_1">
			<div id="floor_head">
				<span class="title_span"><font color="white">Video舞团视频</font></span>
			</div>
		</div>
		<div>
			<br>
		</div>
		<div class="floor_goods_wrap">
			<ul>
				<c:forEach items="${vlist }" var="video">
					<li class="floor_goods_wrap_li"><a class="floor_goods_img"><img
							src="${ctx}/resources/images/${video.videoType}160x160.jpg"
							height="220" width="230"></a> <a class="floor_goods_tit">${video.videoName}</a>
						<a class="floor_goods_txt">${video.videoType}</a> <a
						href="music/downloadvideo/${video.videoId }">下载</a> <a
						href="music/deleteLoveVideo/${video.videoId }">取消收藏</a></li>
				</c:forEach>
				<div style="clear: both;"></div>
			</ul>
		</div>
	</div>
	<div>
		<center>
			<font color="white" size="50px">舞团公告</font>
		</center>
		<table align="center" bgcolor="#008800" border="1" cellspacing="2"
			cellpadding="3" width="800px">
			<tr bgcolor="#CCCCCC">
				<td>公告编号</td>
				<td>公告标题</td>
				<td align="center">操作</td>

			</tr>
			<c:forEach items="${dntlist }" var="teamNews" varStatus="stauts">
				<tr bgcolor="#FFFF88">
					<td><b>${stauts.count}</b></td>
					<td>${teamNews.title }</td>
					<td align="center"><a title="${teamNews.news }" class="newsShow1">详情</a></td>
				</tr>
			</c:forEach>
			<tr>
				<td bgcolor="#FFFFFF" colspan="2"></td>
			</tr>
		</table>
	</div>
</body>
<script type="text/javascript">	
	$(function() {
		$(".newsShow1").each(function(i, ns) {
			$(ns).click(function() {
				alert($(ns).attr("title"));
			});
		});
	});
</script>

</html>