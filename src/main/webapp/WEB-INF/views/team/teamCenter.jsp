<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<c:set var="ctx" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>舞团中心</title>
	<link rel="stylesheet" href="${ctx}/resources/newbootstrap/bootstrap.css">
	<script src="${ctx}/resources/newbootstrap/jquery-2.2.0.js"></script>
	<script src="${ctx}/resources/newbootstrap/bootstrap.min.js"></script>
	<style>
		*{
			padding: 0;
			margin: 0;
		}
		.set_top{
			position: absolute;
			top: 20px;
			right: 60px;
		}
		.set_top .btn{
			padding: 4px 8px;
			margin:0 5px;
		}
		.table_div{
			position: relative;
			top: 70px;
			height: 500px;
			margin: 0 auto;
		}
		.table_div .table .table_tr th:first-child{
			display: none;
			opacity: 1;
		}
		.table_div .table .table_tr #empty input{
			opacity: 0;
		}
		.first_th input{
			width: 18px;
			height: 18px;
			box-shadow: none;
		}
		nav{
			width: 100%;
			height: 75px;
		}
		nav .pagination{
			position: absolute;
			top: 400px;
			left: 50%;
			margin-left: -116px;
		}
		.information{
			position:fixed;
			top: 0px;
			left:0px;
			width: 100%;
			height: 400px;
			/* background-color: #ccc; */
			display: none;
			opacity: 0;
			
		}
		.information .info_img .offbutton{
			position: absolute;
			right: 20px;
			top: 10px;
			width: 30px;
			height:40px;
		}
		.information .info_window{
			position: absolute;
			top: 50%;
			left: 50%;
			margin-left: -200px;
			margin-top: -260px;
			width: 400px;
			height: 380px;
			border:1px solid #333;
			border-radius: 10px;
			background-color:#092756;
		}
		.information .info_window form{
			width: 374px;
			margin-left:13px;
		}
		.information .info_window form .submit{
			padding: 8px 16px;
			font-size: 16px;
			margin: 10px 0 0 135px;
			width: 100px;
		}
		.information .info_window form h2{
			text-align: center;
		}
		
		.table-striped > tbody > tr:nth-of-type(odd) {
		    opacity: 0.5;
		}
		
		
		.information1{
			position:fixed;
			top: 0px;
			left:0px;
			width: 100%;
			height: 400px;
			/* background-color: #ccc; */
			display: none;
			opacity: 0;
			
		}
		.information1 .info_img1 .offbutton1{
			position: absolute;
			right: 20px;
			top: 10px;
			width: 30px;
			height:40px;
		}
		.information1 .info_window1{
			position: absolute;
			top: 50%;
			left: 50%;
			margin-left: -200px;
			margin-top: -260px;
			width: 400px;
			height: 380px;
			border:1px solid #333;
			border-radius: 10px;
			background-color:#092756;
		}
		.information1 .info_window1 form{
			width: 374px;
			margin-left:13px;
		}
		.information1 .info_window1 form .submit1{
			padding: 8px 16px;
			font-size: 16px;
			margin: 10px 0 0 135px;
			width: 100px;
		}
		.information1 .info_window1 form h2{
			text-align: center;
		}
		
		.table-striped > tbody > tr:nth-of-type(odd) {
		    opacity: 0.5;
		}
		
	</style>
</head>
<body>
	<div class="set_top">
		<button class="add btn btn-default">添加</button>
		<button class="delete_more btn btn-default">批量删除</button>
	</div>
	<div class="table_div">
		<table class="table table-striped">
			<tr class="table_tr table_title">
				<th id="empty" class='first_th'>
					<input class="box_input" type="checkbox">
					<!--&nbsp;-->
				</th>
				<th>序号</th>
				<th>名称</th>
				<th>电话</th>
				<th>舞种</th>
				<th>舞龄</th>
				<th>性别</th>
				<th>职位</th>
				<th>设置</th>
			</tr>
			<c:forEach items="${tmrlist}" var="tmr" varStatus="stauts">
			<tr class="table_tr table_list">
				<th class='first_th'>
					<input class="box_input" type="checkbox">
				</th>
				<th>${stauts.count}</th>
				<th>${tmr.loginName }</th>
				<th>${tmr.telephone }</th>
				<th>${tmr.danceType }</th>
				<th>${tmr.danceAge }</th>
				<th>${tmr.sex }</th>
				<th>${tmr.roleNote }</th>
				<th>
					<button class="revise btn btn-default b1" id="button1">修改角色</button>
					<button class="delete btn btn-default" >删除</button>
				</th>
			</tr>
			</c:forEach>
		</table>
	</div>

	<nav>
		<ul class="pagination">
			<li>
				<a href="#" aria-label="Previous">
					<span aria-hidden="true">&laquo;</span>
				</a>
			</li>
			<li><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
			<li>
				<a href="#" aria-label="Next">
					<span aria-hidden="true">&raquo;</span>
				</a>
			</li>
		</ul>
	</nav>
	<%@ include file="addMembers.jsp"%>
	<%@ include file="updateRole.jsp"%>
	<%-- <div class="information">
		<div class="info_img">
			<img class="offbutton" src="${ctx}/resources/images/offButton.jpg" alt="">
		</div>
		<div class="info_window">
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
				<div class="input-group input-group-lg">
					<span class="input-group-addon" id="sizing-addon1">dance</span>
					<input type="text" class="form-control" placeholder="Userdance" aria-describedby="sizing-addon1">
				</div>
				<input class="submit btn btn-default" type="submit">
			</form>
		</div>	
	</div> --%>
	<script>
		var winHeight = window.screen.height;
		var oAdd = $('.add'),
			oRevise = $('.revise'),
			oInformation=$('.information'),
			oInformation1=$('.information1'),
			oInfoImg=$('.info_img'),
			oInfoImg1=$('.info_img1'),
			oTableTr=$('.table_tr'),
			oFirstTh=$('.first_th'),
			oDelete=$('.delete'),
			oBoxInput=$('.box_input'),
			oDeleteMore=$('.delete_more');
			
		
		oInformation.css('height',winHeight+'px');
		oInformation1.css('height',winHeight+'px');
		oAdd.click(function() {
			oInformation.css('display','block').animate({"opacity":"1"},200);
			console.log(222);
		});
		oRevise.click(function() {
			oInformation1.css('display','block').animate({"opacity":"1"},200);
			console.log(222);
		});
		oInfoImg.click(function(){
			oInformation.animate({"opacity":"0"},200).css('display','none');
		})
		oInfoImg1.click(function(){
			oInformation1.animate({"opacity":"0"},200).css('display','none');
		})
		oDeleteMore.click(function(e){
			var yesorno = oFirstTh.css('display')
			if(yesorno == 'none') {
				oFirstTh.css('display','block');
				console.log(oFirstTh);
			}else{
				for(var i = 0; i < oBoxInput.length; i++) {
					if(oBoxInput[i].checked == true) {
						console.log(22)
						oBoxInput[i].parentNode.parentNode.remove();
					}
				}
			}
		})
		
		oDelete.click(function(e) {
			e.target.parentNode.parentNode.remove();
		})
		
		$(function(){
			$(".b1").each(function(i,b){
				$(b).click(function(){
					var name=$(b).parent().prev().prev().prev().prev().prev().prev().text();
					$("#username").val(name);
					var role=$(b).parent().prev().text();
					$("#urole").find("option").each(function(i,r){
						//alert($(r).text());
						if($(r).text().trim()==role){
							$(r).prop("selected",true);
						}
					});
				});
			});
		});
	
		
		
	</script>

</body>
</html>