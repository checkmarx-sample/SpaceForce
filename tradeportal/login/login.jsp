<%@ include file="../pages/common/moduleInclude.jsp" %>

<%
response.setHeader("Cache-Control","no-store"); //HTTP 1.1
response.setHeader("Pragma","no-cache"); //HTTP 1.0
response.setDateHeader ("Expires", 0); //prevents caching at the proxy server
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>TP - Trade Portal Home Page</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Type" content="text/html" />
<META HTTP-EQUIV="PRAGMA" CONTENT="NO-CACHE"/> 
<script language="javascript">AC_FL_RunContent = 0;</script>
<script src="<s:url value="/js/AC_RunActiveContent.js"/>" language="javascript"></script>
<link rel="stylesheet" type="text/css" href="<s:url value="/css/rwi-2.css"/>" />
<link rel="shortcut icon" href="<s:url value="/img/favicon.ico"/>" />
</head>
<body>
<br />
<table cellpadding="0" cellspacing="0" id="content" border="0" align="center">
	<tr valign="mtop">
		<td colspan="2">
			<table cellpadding="0" cellspacing="0" border="0">
				<tr valign="middle">
					<td id="utilities" align="right"><a href="<s:url action="../FindLocations"/>">Find Offices</a> | <a >Contact Us</a> | <a >Site Map</a>&nbsp;</td>
					<td id="search" align="right" ><form id="search" action="" method="get" >
							<input type="text" size="28" maxlength="75" name="query" id="searchbox" title="Search" height="24" align="absmiddle" />
							<input type="image" src="<s:url value="/img/btn_search_white.gif" includeParams="none"/>" alt="Search" name="searchBtn" id="searchbtn"  align="absmiddle" disabled/>
						</form></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr valign="top">
		<td align="left"><img id="header" src="<s:url value="/img/header.gif" includeParams="none"/>" /></td>
	</tr>
	<tr valign="top" id="menubar">
		<td colspan="2">
			<table cellpadding="0" cellspacing="0" border="0" align="right">
				<tr valign="top">
					<td><a  title="New to Investing">New to Investing</a></td>
					<td><a  title="Retirement Options">Retirement</a></td>
					<td><a  title="Trade Like a Pro">Trading</a></td>
					<td><a  title="Information About Trade Portal">About Trade Portal</a></td>
				</tr>
			</table>
		</td>
	</tr>
	<tr valign="top">
		<td>
			<table cellpadding="0" cellspacing="0" border="0">
				<tr valign="top">
					<td>
						<table cellpadding="0" cellspacing="0" border="0" align="left" id="left">
							<tr valign="top">
								<td>
									<table cellpadding="0" cellspacing="0" border="0" id="onlinebanking">
									<tr valign="top">
										<td id="signon_title">Trade Portal</td>
									</tr>
									<tr valign="top">
<%--                                        
                                        <td id="accounts" width="100%" height="30"><form action="" method="post" name="signon" >
												<label for="accounts">Go to</label>
												:&nbsp;
												<select id="goto" name="accounts" id="accounts" style="margin-left:4px">
												<option value="AccountSummary" selected="selected">Account Summary</option>
												<option value="Transfer">Transfer</option>
												<option value="Messages">Messages &amp; Alerts</option>
                                                </select>
											</form>
										</td>
--%>
                                    </tr>
                                    <tr>
                                        <td>
                                            <c:choose>
                                                <c:when test="${param.errorMsg != null}" >
													<%-------XSS---------------------------------------------%>
                                                    <font color="red">${param.errorMsg}</font>
                                                    
													<%-------Try---------------------------------------------%>
                                                    <%--<font color="red"><c:out value="${param.errorMsg}"/></font>--%> 
													<%-------Try---------------------------------------------%>
													<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>--%>
                                                    <%--<font color="red">${fn:escapeXml(param.errorMsg)}/></font>  --%>

                                                </c:when>
                                            </c:choose>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td id="userid">

                                            <s:form action="j_security_check" method="GET" theme="simple">
                                                <strong><s:label value="Username:" for="j_username" /></strong><br />
                                                <s:textfield name="j_username" id="j_username" maxLength="50" cssStyle="width:140px"/><br />
                                                <strong><s:label value="Password:" for="j_username" /></strong><br />
                                                <s:password name="j_password" id="j_password" maxLength="50" cssStyle="width:140px"/>
                                                <input type="image" align="absmiddle" alt="Go" src="<s:url value="/img/btn_go_white.gif" includeParams="none"/>" value="Submit"/>
                                                <%-- <s:submit align="absmiddle" type="image" src="/tradeportal/img/btn_go_white.gif"/> align doesn't work--%>
                                            </s:form>

											<p id="signup">Need to set up online access?<br/>
												<a href="<s:url action="Register"/>?template=/pages/acquired/default.jsp">Sign Up Now</a> or <a >Take a Tour</a></p>
                                        </td>
									</tr>
									<tr valign="top">
										<td>
											<img align="middle" src="<s:url value="/img/horizontall.gif" includeParams="none"/>" />
										</td>
									</tr>
									<tr valign="top">
										<td>
											<h2>Account Services</h2>
											<p id="services"> <a >Visit our Investment Center</a><br />
												<a >Get Mobile Trader</a><br />
												<a >Try Online Statements</a><br />
												<a >&gt;&gt;&nbsp;More</a></p>
										</td>
									</tr>
									<tr valign="top">
										<td>
											<img align="middle" src="<s:url value="/img/horizontall.gif" includeParams="none"/>" />
										</td>
									</tr>
									<tr valign="top">
										<td>
											<h2>Find Offices</h2>
											<form id="locator" action="<s:url action="../ShowLocations"/>" >
												<input type="text" size="28" maxlength="70" id="zip" name="zip" value="Enter Zip code or City & State" title="Find Offices" style="float:left;width:147px" onclick="this.select();this.style.color='#000';" onfocus="this.select();this.style.color='#000';"/>
												<input type="image" src="<s:url value="/img/btn_go_white.gif" includeParams="none"/>" id="locationGo" name="locationGo" alt="Go" style="clear:right;margin:1px 0 0 5px;padding:0"/>
											</form>
										</td>
									</tr>
									<tr valign="top">
										<td>
											<img align="middle" src="<s:url value="/img/horizontall.gif" includeParams="none"/>" />
										</td>
									</tr>
									<tr valign="top">
										<td>
											<h2>Fraud Prevention &amp; <br/>
												Online Security</h2>
											<p id="services"> <a >Report Suspicious Activity</a><br />
												<a >Identity Theft</a><br />
												<a >TP Secure Trade&trade;</a><br />
												<a >Our Online Security Guarantee</a></p>
										</td>
									</tr>
							</table>
								</td>
							</tr>
							<tr valign="top">
								<td>
								<table cellpadding="0" cellspacing="0" border="0" id="bg_image">
									<tr valign="top">
										<td>
											<img width="248" src="<s:url value="/img/accounts_bg_home.gif" includeParams="none"/>" />
										</td>
									</tr>
								</table>
							</td>
							</tr>
							<tr valign="top">
								<td><br /></td>
							</tr>
						</table>
					</td>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" align="right" id="right">
							<tr valign="top">
								<td colspan="3">
								<img src="<s:url value="/img/LoginDefault.jpg" includeParams="none"/>" width="731" height="194" id="TP-1" align="middle"  />
								</td>
							</tr>
							<tr valign="top" class="links">
								<!-- 1st row -->
								<td width="33%" ><h2 class="row1title">&nbsp;&nbsp;Investment Choices</h2>
									<a title ="Stocks">Stocks</a><br />
									<a  title ="Options">Options</a><br />
									<a  title ="Futures">Futures</a><br />
									<a  title ="ETFs">ETFs</a><br />
									<a  title ="Mutual Funds">Mutual Funds</a><br />
									<a  class="last" title="Bonds">Bonds</a>
								</td>
								<td width="33%"><h2 class="row1title">&nbsp;&nbsp;Knowledge</h2>
									<a  title ="Education Topics">Education Topics</a><br />
									<a  title ="Thematic Investing">Thematic Investing</a><br />
									<a  title ="Markets and News">Markets and News</a><br />
									<a  title ="Web Casts">Web Casts</a><br />
									<a  class="last" title="Taxes">Taxes</a>
								</td>
								<td width="33%"><h2 class="row1title" class="inv">&nbsp;&nbsp;Tools</h2>
									<a  title ="Trader Offering">Trader Offering</a><br />
									<a  title ="24/5 Trading">24/5 Trading</a><br />
									<a  title ="Web Platform">Web Platform</a><br />
									<a  title ="Mobile Trading">Mobile Trading</a><br />
									<a  title ="Compare Platforms">Compare Platforms</a><br />
									<a  class="last" title="Order Execution">Order Execution</a>
								</td>
							</tr>
							<tr valign="top" class="links">
								<!-- 2st row -->
								<td width="33%"><h2 class="row2title">&nbsp;&nbsp;Investment Products</h2>
									<a  title ="Managed Portfolios">Managed Portfolios</a><br />
									<a  title ="Cryptocurrency Trading">Cryptocurrency Trading</a><br />
									<a  title ="Bonds & Fixed Income">Bonds &amp; Fixed Income</a><br />
									<a  title ="Annuities">Annuities</a><br />
									<a  class="last" title="Forex">Forex</a>
								</td>
								<td width="34%"><h2 class="row2title">&nbsp;&nbsp;Guidance</h2>
									<a  title ="Investment Management Services">Investment Management Services</a><br />
									<a  title ="Goal Planning">Goal Planning</a><br />
									<a  title ="Independent Advisor Referral">Independent Advisor Referral</a><br />
									<a  title ="Pro Picks">Pro Picks</a><br />
									<a  class="last" title="Trade Portal Community" ><strong>&gt;&gt;</strong>&nbsp;Trade Portal Community</a>
								</td>
								<td width="33%"><h2 class="row2title" class="inv">&nbsp;&nbsp;Other Services</h2>
									<a  title ="Banking">Banking</a><br />
									<a  title ="Loans">Loans</a><br />
									<a  title ="Debt Consolidation">Debt Consolidation</a><br />
									<a  title ="Credit Cards">Credit Cards</a><br />
									<a  class="last" title="Travel Services"><strong>Travel Services</a>
								</td>
							</tr>
							<tr valign="top" class="links">
								<!-- 3rd row -->
								<td><br />
									<img src="<s:url value="/img/small-ad3.gif" includeParams="none"/>" />
								</td>
								<td><br />
									<img style="margin-left:.25em;" src="<s:url value="/img/small-ad1.gif" includeParams="none"/>" />
								</td>
								<td><br />
									<img src="<s:url value="/img/small-ad2.gif" includeParams="none"/>" />
								</td>
							</tr>
							<tr valign="top" class="footer">
								<td colspan="3">
								<br />
									<p id="footerNav"><a href="<s:url value="../pages/About.jsp"/>">About Trade Portal</a> | <a href="<s:url action="../Careers"/>">Careers</a> | <a href="<s:url action="../Security"/>?privacy_statement=http://www.hp.com/country/us/en/privacy.html">Privacy, Security &amp; Legal</a> | <a >Report Email Fraud</a> | <a >Diversity &amp; Accessibility</a>  <br /><a >Important Notice on Trading in Fast Markets</a> | <a >Online Access Agreement (3/06/2018) </a> | <a >Sitemap</a></p>
								</td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<table cellpadding="0" cellspacing="0" border="0" align="center">
				<tr valign="top">
					<td>
						<p id="copy"><img src="<s:url value="/img/al_ehl_house_gen.gif" includeParams="none"/>" alt="" width="14" height="10" style="padding:0 5px 0 15px" /><strong style="color:#000">Protection Guaranteed</strong><br />Trade Portal, Member FDIC. &copy; 2018 TP. All rights reserved.</p>
					</td>
				</tr>
			</table>
			<br />
		</td>
	</tr>
</table>
<script>
	document.getElementById("j_username").focus();
</script>
</body>
</html>
