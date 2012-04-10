<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.sql.*"
	import="java.security.*"
%>
<html>
<head>
<title>LoginCheck</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>

<body>
<%@include file="db.jsp"%>
    <%
      try
      {
          String uid=request.getParameter("userid");
          String pa=request.getParameter("password");
          String pahash=null;
          String plainText1 = pa;
		
		//HashFunction
		MessageDigest mdAlgorithm = MessageDigest.getInstance("MD5");
		mdAlgorithm.update(plainText1.getBytes());
		byte[] digest = mdAlgorithm.digest();
		StringBuffer hexString1 = new StringBuffer();
		for (int i = 0; i < digest.length; i++)
		{
		    plainText1 = Integer.toHexString(0xFF & digest[i]);
	    	if (plainText1.length() < 2)
	    	{
    		    plainText1 = "0" + plainText1;
    		}	
    			hexString1.append(plainText1);
		}
		pahash=hexString1.toString();
        //End of Hash Function
          
          String uiddb=null;
          String padbhash=null;
          String fname=null;
          String lname=null;
          
          //Accessing Database
          ResultSet rs;
          Statement st;
          st=con.createStatement();
          rs=st.executeQuery("select * from user where userid='"+uid+"' and password='"+pahash+"' ");
        
          
          while(rs.next())
          {
              uiddb=rs.getString("userid");
              padbhash=rs.getString("password");
              fname=rs.getString("fname");
              lname=rs.getString("lname");      
          }
 		         
          if((uid.equals(uiddb))&&(pahash.equals(padbhash)))
          {session.setAttribute("userid",uid);
          session.setAttribute("fname",fname);
          session.setAttribute("lname",lname);
          %>
             <jsp:forward page="home.jsp"/>
          <%}
          else
          {%>
              <script type="text/javascript">
              alert('Username/Password Incorrect');
              window.location = './index.jsp';
              </script>              
         <% }
      }
      catch(Exception e)
      {
      	out.println(e);
      }
%>
       
</body>
</html>