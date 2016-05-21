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
			<form action="">
				<h2>信息</h2>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">name</span>
					<input type="text" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">sex</span>
					<input type="text" class="form-control" placeholder="Usersex" aria-describedby="sizing-addon1">
				</div>
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">call</span>
					<input type="text" class="form-control" placeholder="Usercall" aria-describedby="sizing-addon1">
				</div>
				<input class="submit1 btn btn-default" type="submit">
			</form>
		</div>	
	</div>
</body>
</html>