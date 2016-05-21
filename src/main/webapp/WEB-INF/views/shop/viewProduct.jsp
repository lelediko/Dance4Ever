<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<%@include file="../commons/top.jsp"%>


<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewcategory.xhtml">
			
			</a>
		</td>
	</tr>
</table>

<p>

	<center>
		<h2>
			${prod.productName }
		</h2>
	</center>

	<table align="center" bgcolor="#008800" border="0" cellspacing="2" cellpadding="3">
		<tr bgcolor="#CCCCCC">
			<td>
				产品号
			</td>
			<td>
				产品名字
			</td>
			<td>
				产品剩余库存
			</td>
			<td>
				已卖数量
			</td>
			<td>
				产品描述
			</td>
			<td>
				产品单价
			</td>
			<td>
				&nbsp;
			</td>
		</tr>
		
		<c:forEach items="${pplist }" var="prod">
		<tr bgcolor="#FFFF88">
			<td>
				<b> <a href="showProduct/${prod.productId}">${prod.productId}</a>
				</b>
			</td>
			<td>
				${prod.productName}
			</td>
			<td>
				${prod.productNum}
			</td>
			<td>
				${prod.productSellNum}
			</td>
			<td>
				${prod.productDesc}
			</td>
			<td>
				${prod.productUnitPrice}
			</td>
			<td>
				<a href="${prod.productId}/addToShopCar"><img border="0"
						src="${ctx}/resources/images/images/button_add_to_cart.gif" />
				</a>
			</td>
		</tr>
		</c:forEach>
		

		<tr>
			<td bgcolor="#FFFFFF" colspan="2">
				
			</td>
		</tr>
	</table>
	<%@include file="../commons/banner.jsp" %>	
	<%@include file="../commons/bottom.jsp"%>