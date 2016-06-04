<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="information">
		<div class="info_window">
			<div class="info_img">
				<img class="offbutton" src="${ctx}/resources/images/offButton.jpg" alt="">
			</div>
			<form action="addMembers" name="addMembers" id = "addMemebers" method="post">
				<h2>信息</h2>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">登录名</span>
					<input type="text" name="username" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">密码</span>
					<input type="text" name="password" class="form-control" placeholder="UserPassword" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">角色</span>
					<select type = "select" name="role" id ="role" class="form-control" aria-describedby="sizing-addon1">
						<option value = "2">
							团长
						</option>
						<option value = "3">
							队长
						</option>
						<option value = "4">
							队员
						</option>
					</select>
<!-- 					<input type="text" class="form-control" placeholder="Usercall" aria-describedby="sizing-addon1"> -->
				</div>
				
				<input class="submit btn btn-default" type="submit" value="添加">
			</form>
		</div>	
	</div>
</body>
</html>