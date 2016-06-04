<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../commons/top.jsp"%>

<table border="0" width="100%" cellspacing="0" cellpadding="0">
	<tr>
		<td valign="top" width="20%" align="left">
			<table align="left" bgcolor="#008800" border="0" cellspacing="2"
				cellpadding="2">
				<tr>
					<td bgcolor="#FFFF88">
						<a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 主菜单</font>
				</b></a>
					</td>
				</tr>
			</table>
		</td>
		<td valign="top" align="center">
			<h2 align="center">
				订单详情
			</h2>
			<form name="form1" method="post" action="">
				<table align="center" bgcolor="#008800" border="0" cellspacing="2"
					cellpadding="5" >
					<tr bgcolor="#cccccc">
						<td>
							商品编号
						</td>
						<td>
							商品名称
						</td>
						<td width="100">
							单价
						</td>
						<td>
							数量
						</td>
						<td>
							总价
						</td>
						<td>
							移出购物车
							
						</td>
					</tr>
					
				<c:forEach items="${plist }" var="product">
					<tr bgcolor="#FFFF88">
						<td>
							<b> 
								<a href="">${product.productId }</a>
							</b>
						</td>
						<td>
							${product.productName }
						</td>
						<td>
							${product.productUnitPrice }
														
						</td>
						<td align="center">
							<input type="text" name="number" id="number" class="nu" value="${product.productSellNum }" />							
						</td>
						<td align="center" class="co">
							${product.productUnitPrice * product.productSellNum }
						</td>
						<td>
							<a href="remove/${product.productId }"><img border="0"
									src="${ctx }/resources/images/images/button_remove.gif" />
							</a>
						</td>
					</tr>
				</c:forEach>
					<tr bgcolor="#FFFF88">
						<td colspan="1" align="left">
							<b>
								收货地址：
							</b>							
						</td>
						<td colspan="7">
							<input type="text" name="address" id="address" />
							&nbsp;
						</td>
					</tr>
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
								总付款金额
							</b>							
						</td>
						<td id="to">
							&nbsp;
						</td>
					</tr>
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
								我已确认所有信息&nbsp;
							</b>							
						</td>
						<td>
							<input type="submit" value="提交订单" />
						</td>
					</tr>
				</table>
				<center>
				</center>
			</form>
			<br />
			<center>
				<a href=""><img border="0"
						src="${ctx}/resources/images/images/button_checkout.gif"/>
				</a>
			</center>
		</td>
		<td valign="top" width="20%" align="right">
				<%@include file="favItem.jsp" %>	
		</td>
	</tr>
</table>

<br>
<%@include file="../commons/banner.jsp" %>		
<%@include file="../commons/bottom.jsp"%>
<script type="text/javascript" src="${ctx}/resources/js/jquery-2.1.4.min.js">
</script>
<script type="text/javascript">
function test(){
	var count=0;
	$(".co").each(function(i,n){
		//alert($(n).text());
		var t=$(n).text();
		count=count+parseInt(t);
		//alert(count);
	});
	//alert(count);
	return count;
}
$(function(){
	$("#to").text(test()+"元");
	$(".nu").each(function(i,n){
		$(n).keyup(function(){
			//alert($(n).parent().prev().text());
			//alert($(n).val());
			$(n).parent().next().text($(n).parent().prev().text()*$(n).val());
			$("#to").text(test()+"元");
		});
	});
});
	
</script>