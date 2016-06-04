<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
  <head>
  		<TITLE></TITLE>
  		<c:set var="ctx" value="${pageContext.request.contextPath}" />
		<META content="text/html; charset=utf-8" http-equiv=Content-Type>
		
  </head>
  
 <BODY bgColor=white >
   	<TABLE background="${ctx}/resources/images/images/bkg-topbar.gif" border=0 cellSpacing=0
			cellPadding=5 width="100%">
			<TBODY>
				<TR>
					<TD>
						<A href="/SPetStoreTemp"><IMG border=0
								src="${ctx}/resources/images/dn.JPG" height="65" width="65">
						</A>
					</TD>
					<TD align=right >
						<A href="showCar"><IMG border=0 name=img_cart
								src="${ctx}/resources/images/images/cart.gif">
						</A>
						<IMG border=0 src="${ctx}/resources/images/images/separator.gif">
						
						
						
						
						<IMG border=0 src="${ctx}/resources/images/images/separator.gif">
						
					</TD>
					<TD align=left valign="bottom">
						<FORM action="">
							<INPUT name=keyword size=14>
							<INPUT border=0 src="${ctx}/resources/images/images/search.gif" type=image>
						</FORM>
					</TD>
					
				</TR>
			</TBODY>
		</TABLE>
		<center>
			<a
				href=""><img
					border="0" src="${ctx}/resources/images/hat.png" 
					height="20" width="40"/>
			</a>
			<img border="0" src="${ctx}/resources/images/images/separator.gif" />
			<a
				href=""><img
					border="0" src="${ctx}/resources/images/pants.png" 
					height="20" width="40"/>
			</a>
			<img border="0" src="${ctx}/resources/images/images/separator.gif" />
			<a
				href=""><img
					border="0" src="${ctx}/resources/images/clothes.png" 
					height="20" width="40"/>
			</a>
			<img border="0" src="${ctx}/resources/images/images/separator.gif" />
			<a
				href=""><img
					border="0" src="${ctx}/resources/images/shoes.png" 
					height="20" width="40"/>
			</a>
			<img border="0" src="${ctx}/resources/images/images/separator.gif" />
			<a
				href=""><img
					border="0" src="${ctx}/resources/images/jewelty.png" 
					height="20" width="40"/>
			</a>
		</center>
		