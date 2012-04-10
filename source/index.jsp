<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>Ambitionation</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body style="background: url(images/IndexBackground.png) center  no-repeat; " >
<%@include file="header.jsp"%>
<div align="center">
	<h2>Welcome To Ambitionation!</h2>
	<h3><i>"Ideate.Collaborate.Create"</i></h3>
	<h4><i>Ambitionation</i> is the worlds first Ambition Network</h4>
	<h5>It Allows People To Share Their Ambitions And Work Collectively To Achieve Them.</h5>
	
	<form name=registerform method="POST" action="registration.jsp">
	<table border="0" cellpadding="0" cellspacing="0" width="320" height="148" bgcolor="#A8CAF0">
		<tr bgcolor="#CODFFD">
			<td width="3000" height="1" bgcolor="#A8CAF" align="center" valign="middle" colspan="2">
				<b>
				<font face="Times New Roman" size="5" color="maroon">Register</font>
				</b>
			</td>
		</tr>
		<tr bgcolor="#C0DFFD">
			<td width="3000" height="40" bgcolor="#FFFFFF" rowspan="3" align="center" valign="middle">
				Enter Your Ambition<br>in One Line<br>
				<br>
				<input type="text" name="aid" size="30" maxlength="2048">
			</td>
			<td width="3000" height="40" bgcolor="#FFFFFF" align="center" valign="middle" rowspan="3">
			<input class="submit" type="image" src="images/go.gif" value="Submit">
			</td>
		</tr>
	</table>
	</form>
</div>

</body>
</html>