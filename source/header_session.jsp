<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>Header_Session</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%!
		String ambition;
		String uid;
        String fname;
        String lname;
        String city;
        String state;
        String work;
        String study;
%>      
<%		
		uid = (String)session.getAttribute("userid");
		fname = (String)session.getAttribute("fname");
        lname = (String)session.getAttribute("lname");
		if(session.getAttribute("userid")==null)
          {%>
             <jsp:forward page="index.jsp"/>
          <%}
%>

<div align="center">
	<div id="blue" align="center">
	<div id="logo" style="width: 265px">
		<a href="index.jsp">
			<img src="images/LogoMenu.png" alt="" width="318" height="117">
		</a>
	</div>
	<div id="session">
		<div style="font-size: 24px; color: #FFFFFF; padding: 6px 0">
			<b>Welcome!</b>
		</div>
		<div style="font-size: 24px; color: #FFFFFF; padding: 6px 0">	
			<form name=logoutform method="POST" action="logout.jsp">
				<b><%= fname%> <%=lname%></b>
				<input id="submit" type="image" src="images/logout.png" value="submit" align="right">
				<div style="height: 5px; font-size: 0px">
					<img src="images/spacer.gif" alt="">
				</div>
			</form>
		</div>
	</div>
	</div>
	<div>
		<div id="buttons" style="height: 49px; width: 800px">
			<a href="home.jsp" class="but" title="">Home</a>
			<a href="profile.jsp?puid=<%=uid %>" class="but" title="">Profile</a>
			<a href="friends.jsp" class="but" title="">Friends</a>
			<a href="groups.jsp" class="but" title="">Groups</a>
			<a href="search.jsp" class="but" title="">Search</a>
		</div>
	</div>
</div>

</body>
</html>