<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>Home</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>

<body>
<%@include file="header_session.jsp"%>
<%@include file="db.jsp"%>

<%
 //Accessing Database
                    
          	Connection con;
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			con = DriverManager.getConnection("jdbc:db2:DBTEST");
          ResultSet rs1,rs2,temp;
          Statement st1,st2;
          st1=con.createStatement();
          rs1=st1.executeQuery("select * from user where userid='"+uid+"' ");
          st2=con.createStatement();
          rs2=st2.executeQuery("select * from feedback where userid='"+uid+"' ");
          
          while(rs1.next())
          {
              //uiddb=rs.getString("userid");
              ambition=rs1.getString("ambition");
              out.println("<center><h1>Ambition: "+ambition+"</h1></center><p></p><p></p>");     
          }
		  out.println("<table>");
          while(rs2.next())
          {
              out.println("<tr>");
              out.println("<td><a href='./profile.jsp?userid="+rs2.getString("critic")+"'>"+rs2.getString("critic")+"</a></td>");
              out.println("<td>Commented on "+rs2.getString("userid")+"'s Ambition of "+rs2.getString("ambition")+" with:</td></tr>");
              out.println("<tr><td>"+rs2.getString("feedback")+"<br><br></td></tr>");
          }
          out.println("</table>");
%>
</body>
</html>