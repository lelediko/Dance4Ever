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
</head>
<body scroll=auto>
	<div id="head_hot_goods_wrap">
		<div id="head_hot_goods_title">
			<span class="title_span">Music音乐推荐</span>
		</div>
		<div id="head_hot_goods_content">
			<ul>
				<li><a><img src="${ctx}/resources/images/jazz160.jpg"
						height="160" width="160"></a> <a>jazz</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/popping160.jpg"
						height="160" width="160"></a> <a>popping</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/hiphop160.jpg"
						height="160" width="160"></a> <a>hiphop</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/locking160.jpg"
						height="160" width="160"></a> <a>locking</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/jazz160.jpg"
						height="160" width="160"></a> <a>jazz</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/popping160.jpg"
						height="160" width="160"></a> <a>popping</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/hiphop160.jpg"
						height="160" width="160"></a> <a>hiphop</a> <a>音乐名称</a></li>
				<li><a><img src="${ctx}/resources/images/locking160.jpg"
						height="160" width="160"></a> <a>locking</a> <a>音乐名称</a></li>
			</ul>
		</div>
	</div>

	<script type="text/javascript" src="${ctx}/resources/js/index.js"></script>
</body>
</html>