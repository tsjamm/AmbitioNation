<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.sql.*"
%>
<html>
<head>
<title>db</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>
<%
	Connection con;
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	con = DriverManager.getConnection("jdbc:db2:DBTEST");
%>
</body>
</html>