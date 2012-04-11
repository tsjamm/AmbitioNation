<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>search</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%@include  file="header_session.jsp"%>
<div align="center">
	<h1>Search</h1>
	<form method="post">
		<input name="Text1" style="width: 398px" type="text" />
		<input name="Submit1" type="submit" value="submit" />
	</form>
	<form method="post">
		<select name="Select1" style="width: 261px">
			<option selected="selected" value="newsfeed">News Feed</option>
			<option value="users">Users</option>
			<option value="group">Group</option>
		</select>
	</form>
	<form method="post">
		<select name="Select2" style="width: 259px">
			<option selected="selected" value="userid">User ID</option>
			<option value="fname">First Name</option>
			<option value="lname">Last Name</option>
			<option value="date">Date</option>
		</select>
	</form>
</div>

</body>
</html>