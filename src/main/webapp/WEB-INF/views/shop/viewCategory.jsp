<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%@include file="../commons/top.jsp" %>

		

<table align="left" bgcolor="#008800" border="0" cellspacing="2"
	cellpadding="2">
	<tr>
		<td bgcolor="#FFFF88">
			<a href="main.xhtml"><b><font color="BLACK" size="2">&lt;&lt; 主菜单</font>
				</b></a>
		</td>
	</tr>
</table>

<p>
	<center>
		<h2>
			帽子
		</h2>
	</center>
	<table align="center" bgcolor="#008800" border="0" cellspacing="2"
		cellpadding="3">
		<tr bgcolor="#CCCCCC">
			<td>
				产品编号
			</td>
			<td>
				产品种类
			</td>
		</tr>
			
				<c:forEach items="${catelist }" var="category">
				<tr bgcolor="#FFFF88">
				<td>
					<b><a href="showItem/${category.categoryId }">
						${category.categoryId}
						</a>
					</b>
				</td>
				<td>
						${category.categoryName}
				</td>
			</tr>
			</c:forEach>
			
			
		
			
		
		<tr>
			<td bgcolor="#FFFFFF" colspan="2">
				
				
			</td>
		</tr>
	</table>
<%@include file="../commons/banner.jsp" %>		
<%@include file="../commons/bottom.jsp" %>