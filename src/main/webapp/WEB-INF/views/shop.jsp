<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML><HEAD><TITLE>JPetStore Demo</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
</HEAD>

<BODY bgColor=white>
<TABLE background="${ctx}/resources/images/images/bkg-topbar.gif" border=0 cellSpacing=0 cellPadding=5 width="100%">
  <TBODY>
  <TR>
    <TD><A href=""><IMG border=0

      src="${ctx}/resources/images/dn.JPG" height="65" width="65"></A> </TD>
    <TD align=right><A href=""><IMG border=0

      name=img_cart src="${ctx}/resources/images/images/cart.gif"></A>
      <IMG border=0 src="${ctx}/resources/images/images/separator.gif">

      <A href="" >
      <IMG border=0 name=img_signin src="${ctx}/resources/images/images/sign-in.gif"></A>
      <IMG border=0
      src="${ctx}/resources/images/images/separator.gif"> <A
      href="help.html"
      ><IMG border=0
      name=img_help src="${ctx}/resources/images/images/help.gif"></A>
  </TD>    <TD align=left valign=bottom>
      <FORM action="">
      <INPUT name=keyword size=14> <INPUT border=0
      src="images/search.gif"
      type=image> </FORM>
      </TD>
</TR>
</TBODY></TABLE>
<TABLE border=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD vAlign=top width=100%>
      <p>&nbsp;</p>
      <p align="center"><b>欢迎进入街舞购物商店</b></p>
      <p align="center"><a href="showShopMain">进入商店</a></p>
      </TD>
  </TR>
  </TBODY>
</TABLE>

<P>&nbsp;</P>

<P align="center">

<a href="#">制作人：魏辉Diko</a>

</P>

</BODY>

</HTML>


