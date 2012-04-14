<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.security.*"
	import="java.sql.*"
%>
<html>
<head>
<title>registration_check</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@include  file="header.jsp"%>

<%

      try
      {
         
          String ambition=request.getParameter("ambition");
          String uid=request.getParameter("userid");
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String pw=request.getParameter("pword");
          String phone=request.getParameter("phone");
          String city=request.getParameter("city");
          String state=request.getParameter("state");
          String date=request.getParameter("date");
          String month=request.getParameter("month");
          String year=request.getParameter("year");
          String work=request.getParameter("work");
          String study=request.getParameter("study");
          

		  String uiddb=null;
          String pahash=null;
          
          String plainText = pw;

		//Hash Function
		MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
		mdAlgorithm.update(plainText.getBytes());
		byte[] digest = mdAlgorithm.digest();
		StringBuffer hexString = new StringBuffer();
		for (int i = 0; i < digest.length; i++) {
		    plainText = Integer.toHexString(0xFF & digest[i]);
	    if (plainText.length() < 2) {
    	    plainText = "0" + plainText;
    	}

    		hexString.append(plainText);
		}
		pahash=hexString.toString();
        //End of Hash  
          Connection con;
			Class.forName("com.ibm.db2.jcc.DB2Driver");
			con = DriverManager.getConnection("jdbc:db2:DBTEST");
          ResultSet rs1;
          Statement st;
          st=con.createStatement();
        
          rs1=st.executeQuery("select * from user where userid='"+uid+"' ");
          while(rs1.next())
          {
              uiddb=rs1.getString("userid");
           } 
          	if(uid.equals(uiddb))
         	{
          	   out.println("Username Already Exists");
        	}
        	else
        	{st.executeUpdate("insert into user values('"+uid+"','"+pahash+"','"+ambition+"','"+fname+"','"+lname+"','"+year+"-"+month+"-"+date+"','"+city+"','"+state+"','"+phone+"','"+work+"','"+study+"')");
        	//session.setAttribute("userid",uid);
        	out.println("Successfully Registered! Log In to Continue...");
        	}
 
         }
      
      catch(Exception e)
      {
      out.println("Exception Occured...\n");
      out.println(e);
      }
     
%>


</body>
</html>