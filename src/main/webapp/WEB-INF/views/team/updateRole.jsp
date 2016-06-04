<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="information1">
		<div class="info_window1">
			<div class="info_img1">
				<img class="offbutton1" src="${ctx}/resources/images/offButton.jpg" alt="">
			</div>
			<form action="updateRole" name="updateRole" id = "updateRole" method="post">
				<h2>修改角色</h2>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">登录名</span>
					<input type="text" name="username" id="username" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">角色</span>
					<select type = "select" name="urole" id ="urole" class="form-control" aria-describedby="sizing-addon1">
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
				</div>
				<input class="submit1 btn btn-default" type="submit" value="确认修改">
			</form>
		</div>	
	</div>
</body>
</html>