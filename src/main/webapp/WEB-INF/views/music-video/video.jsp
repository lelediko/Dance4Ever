<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>播放器</title>
<link href="${ctx}/resources/css/video-js.min.css" rel="stylesheet">
<script src="${ctx}/resources/js/video.min.js"></script>
</head>
<body>
<video id="example_video_1" class="video-js vjs-default-skin" controls preload="none" width="640" height="264"
      poster=""
      data-setup="{}">
    <source src="${ctx}/resources/videos/VI.mp4" type='video/mp4' />
<!--     <source src="" type='video/webm' /> -->
<!--     <source src="" type='video/ogg' /> -->
</body>
</html>