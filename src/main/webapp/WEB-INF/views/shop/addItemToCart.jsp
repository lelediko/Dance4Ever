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
			<form name="form1" method="post"
				action="">
				
				<table align="center" bgcolor="#008800" border="0" cellspacing="2"
					cellpadding="5" >
					<tr bgcolor="#cccccc">
						<td>
							商品名称
						</td>
						<td>
							商品种类
						</td>
						<td>
							cccccc
						</td>
						<td>
							<b>ddddd</b>
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
							qqqqq
							&nbsp;
						</td>
					</tr>

			
			
					
					
					<tr bgcolor="#FFFF88">
						<td>
							<b> 
							
							
							<a href="">啊啊啊啊啊啊啊啊啊</a>
							
							</b>
						</td>
						<td>
							哔哔哔哔哔哔哔哔哔哔
						
						</td>
						<td>
							擦擦擦擦擦擦擦
							
						</td>
						<td align="center">
							顶顶顶顶顶顶顶
							
						</td>
						<td>
							福福福福福福福福福
														
						</td>
						<td align="right">
							嘎嘎嘎嘎嘎嘎嘎嘎嘎
							<br/>
						</td>
						<td align="right">
							钱钱钱钱钱钱钱钱钱
							
						</td>
						<td>
							<a href=""><img border="0"
									src="${ctx }/resources/images/images/button_remove.gif" />
							</a>
						</td>
					</tr>
					
					<tr bgcolor="#FFFF88">
						<td colspan="1" align="left">
							<b>
								收货地址：
							</b>							
							
						</td>
						<td colspan="7">
							长春
							&nbsp;
						</td>
					</tr>
					<tr bgcolor="#FFFF88">
						<td colspan="7" align="right">
							<b>
								总付款金额
							</b>							
							
						</td>
						<td>
							元
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