<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctx" value="${pageContext.request.contextPath}" />
	<%@include file="../commons/top.jsp" %>

		<table border="0" cellspacing="2" cellpadding="0" width="100%">
			<tr>
				<td valign="top" width="100%">

					<table align="left" border="0" cellspacing="0" width="80%">
						<tbody>
							<tr>
								<td valign="top">

									<!-- SIDEBAR -->
									
									<table bgcolor="#5A8C29" border="0" cellspacing="2"
										cellpadding="0" width="100%">
										<tr>
											<td>
												<table bgcolor="#FFFF88" border="0" cellspacing="0"
													cellpadding="5" width="200">
													<tbody>
														<tr>
															<td>
																<b><i><font size="2" color="BLACK">
																	欢迎！
																</font></i></b>
																&nbsp;
															</td>
														</tr>
														<c:forEach items="${proList}" var="product">
														<tr>
															<td>
															<a
																	href="showCategory/${product.productType }">
															<img
																		border="0" src="${ctx}/resources/images/${product.productType }1.png" 
																		height="50" width="100"/>
															
																</a>
																<br>
																<font size="2"><i>${product.productNote }</i>
																</font>
															</td>
														</tr>
														</c:forEach>
													</tbody>
												</table>
											</td>
										</tr>
									</table>

								</td>
								<td align="center" bgcolor="white" height="300" width="100%">

									<!-- MAIN IMAGE -->

									<map name="estoremap">
										<area alt="Birds" coords="72,2,280,250"
											href="" shape="RECT" />
										<area alt="Fish" coords="2,180,72,250"
											href="" shape="RECT" />
										<area alt="Dogs" coords="60,250,130,320"
											href="" shape="RECT" />
										<area alt="Reptiles" coords="140,270,210,340"
											href="" shape="RECT" />
										<area alt="Cats" coords="225,240,295,310"
											href="" shape="RECT" />
										<area alt="Birds" coords="280,180,350,250"
											href="" shape="RECT" />
									</map>
									<img border="0" height="355" src="${ctx}/resources/images/left234x614.jpg"
										align="center" usemap="#estoremap" width="350" />
								</td>
							</tr>
						</tbody>
					</table>
				</td>
			</tr>

		</table>

		<br>
<%@include file="../commons/banner.jsp" %>		
<%@include file="../commons/bottom.jsp" %>

