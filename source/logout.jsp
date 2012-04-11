<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>logout</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%		
	session.invalidate();          
%>
	<h2>Redirecting To Index Page....</h2>
    <script type="text/javascript">
    	alert('You Have Been Logged Out');
    	window.location = './index.jsp';
    </script>
</body>
</html>