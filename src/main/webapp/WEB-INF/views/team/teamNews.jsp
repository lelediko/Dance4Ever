<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<title>舞团中心</title>
<!-- 配置文件 -->
<script type="text/javascript"
	src="${ctx}/resources/utf8-jsp/ueditor.config.js"></script>
<!-- 编辑器源码文件 -->
<script type="text/javascript"
	src="${ctx}/resources/utf8-jsp/ueditor.all.js"></script>

</head>
<body>
	<center>
		<font color="white" size="50px">舞团公告</font>
	</center>
	<div align="right" id="fabu">
		<button class="btn btn-default" data-toggle="modal"
			data-target="#myModal" type="button" id = "pu">发布公告</button>
	</div>
	<table align="center" bgcolor="#008800" border="1" cellspacing="2"
		cellpadding="3" width="800px">
		<tr bgcolor="#CCCCCC">
			<td>公告编号</td>
			<td>公告标题</td>
			<td align="center">操作</td>

		</tr>
		<c:forEach items="${dtnlist }" var="teamNews" varStatus="stauts">
			<tr bgcolor="#FFFF88">
				<td><b>${stauts.count}</b></td>
				<td>${teamNews.title }</td>
				<td align="center"><a class="newsShow"
					title="${teamNews.news }">详情</a> <a title="${teamNews.danceTeamNewsId }" data-toggle="modal"
					data-target="#myModal" class="up">修改</a> <a
					href="deleteNews/${teamNews.danceTeamNewsId }">删除</a></td>
			</tr>
		</c:forEach>
		<tr>
			<td bgcolor="#FFFFFF" colspan="2"></td>
		</tr>
	</table>


	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true" >&times;</button>
					<h4 class="modal-title" id="myModalLabel" >发布公告</h4>
				</div>
				<div class="modal-body">
					<form action="publishNews" method="post" name="publishNews"
						id="publishNews">
						<div class="row">
							<div class="col-sm-1"
								style="text-align: center; margin-top: 15px; padding: 0">
								<span>标题:</span>
							</div>
							<div class="col-sm-8">

								<input type="text" name="title" id="title" class="form-control"
									value="" />
									<input type="hidden" name="action" value="" id="ac"/>
									<input type="hidden" name="newsId" value="" id="newsId"/>
							</div>

						</div>

						<textarea rows="" cols="" id="container" name="container"></textarea>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">关闭
					</button>
					<button type="button" class="btn btn-primary" id="bt">提交</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal -->
	</div>
</body>
<script type="text/javascript">
	var ue = UE.getEditor('container');
</script>
<script type="text/javascript">
	$(function() {
		$("#pu").click(function(){
			
			$("#ac").val("add");
		});
		//alert("th");
		$(".up").each(function(i, up) {
			$("#ac").val("update");
			$(up).click(function() {
				$("#newsId").val($(up).attr("title"));
				$("#title").val($(up).parent().prev().text());
				ue.setContent($(up).prev().attr("title"));
			});
		});
		$("#bt").click(function() {
			//var co = $("#container").text();
			var co = ue.getContentTxt();
			var ti = $("#title").val();
			if (co != "" && ti != "") {
				$("#publishNews").submit();
			}
		});
	});

	$(function() {
		$(".newsShow").each(function(i, ns) {
			$(ns).click(function() {
				alert($(ns).attr("title"));
			});
		});
	});
</script>

</html>