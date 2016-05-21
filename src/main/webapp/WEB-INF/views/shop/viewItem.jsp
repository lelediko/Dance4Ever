<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@include file="../commons/top.jsp"%>
<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="viewproduct.xhtml">
				返回
			</a>
		</td>
	</tr>
</table>

<p>
<table align="center" bgcolor="#008800" cellspacing="2" cellpadding="3"
		border="0" width="60%">
		<tr bgcolor="#FFFF88">
			<td bgcolor="#FFFFFF">
				商品图片
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td width="100%" bgcolor="#cccccc">
				${prod.productName}
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<b><font size="4"> 
					￥  ${prod.productUnitPrice}
				
				</font>
				</b>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				<font size="3"><i>库存：${prod.productNum}</i>
				</font>
			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				已售：${prod.productSellNum}

			</td>
		</tr>
		<tr bgcolor="#FFFF88">
			<td>
				描述：${prod.productDesc}
			</td>
		</tr>

		<tr bgcolor="#FFFF88">
			<td>
				<a href="${prod.productId}/addToShopCar"><img border="0"
						src="${ctx}/resources/images/images/button_add_to_cart.gif" />
				</a>
			</td>
		</tr>
	</table>
	<%@include file="../commons/bottom.jsp"%>