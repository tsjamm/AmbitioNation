<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>header</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body bgColor=#c0dffd>
<%		
	if(session.getAttribute("userid")!=null)
          {%>
             <jsp:forward page="home.jsp"/>
          <%}
%>

	<div align="center">
	<div id="blue" align="center">
		<div id="logo" style="width: 265px">
			<a href="index.jsp">
				<img src="images/LogoMenu.png" alt="" width="318" height="117">
			</a>
		</div>
		<div id="login">
			<div style="font-size: 18px; color: #FFFFFF; padding: 6px 0">
			Member Login:
			</div>
			<div>	
			<form name=loginform method="POST" action="logincheck.jsp">
				<input class="input" type="text" name="userid"
					value="Email"
					onfocus="if (this.value == 'Email') this.value = '';"
					onblur="if (this.value == '') this.value = 'Email';">
					&nbsp;&nbsp;&nbsp;
					<input class="input_1" type="password" name="password" value="Password"
					onfocus="if (this.value == 'Password') this.value = '';"
					onblur="if (this.value == '') this.value = 'Password';">
					<input id="submit" type="image" src="images/submit.jpg" value="Submit">
				<div style="height: 5px; font-size: 0px">
					<img src="images/spacer.gif" alt="">
				</div>
				<label style="color: #FFFFFF">
					<input type="checkbox" name="remember">
					Remember Me
				</label>
				&nbsp;&nbsp;&nbsp;
				<a href="forgot_pass.jsp" style="text-decoration: underline">
				Forgot password?
				</a>
			</form>
			</div>
		</div>
	</div>
	</div>

</body>
</html>