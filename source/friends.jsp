<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.sql.*"
%>
<html>
<head>
<title>friends</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
<script type="text/javascript">

function send_message()
{
document.getElementById("friendtype").value=document.getElementById("friendselect").value;
}
</script>
</head>
<body>
<%@include  file="header_session.jsp"%>
<%! StringBuffer sent = new StringBuffer();
StringBuffer received = new StringBuffer();
         ResultSet rs3,rs4;
          Statement st1,st2;
%>
<% 
		  
		 try{
		  String user = (String)session.getAttribute("userid");
		  Connection con;
          
          //out.println("driver");
          Class.forName("com.ibm.db2.jcc.DB2Driver");
    	  //out.println();
    	  con = DriverManager.getConnection("jdbc:db2:DBTEST");
          //out.println("...connection complete");
          //Class.forName("COM.ibm.db2.jdbc.jcc.DB2Driver");
          //con=DriverManager.getConnection("jdbc:db2://localhost:50000/DBTEST:retrieveMessagesFromServerOnGetMessage=true","jammala","sailight");
          st1=con.createStatement();
          st2=con.createStatement();
          //out.println();
          //rs1=st.executeQuery("select citizenuserid2 from friendlist where citizenuserid1='"+user+"' ");
          //rs2=st.executeQuery("select citizenuserid1 from friendlist where citizenuserid2='"+user+"' ");
          rs3=st1.executeQuery("select * from message where citizenuser1id='"+user+"' ");//sent
          rs4=st2.executeQuery("select * from message where citizenuser2id='"+user+"' ");//recieved
          //st.executeUpdate("insert into login values ('"+uid+"','"+pa+"')");
          
          while(rs3.next()){
          sent.append("From: "+rs3.getString("citizenuser1id")+" To: "+rs3.getString("citizenuser2id")+"<br>\n"+rs3.getString("message")+"<br>\n<br>\n");
          }
	  while(rs4.next()){	
		received.append("From: "+rs4.getString("citizenuser1id")+" To: "+rs4.getString("citizenuser2id")+"<br>\n"+rs4.getString("message")+"<br>\n<br>\n");
		}
			
			}
			catch(Exception e)
			{
			out.println(e);
			}
	/*  do{
		dbmessages3.append(rs3.getString("citizenuserid")+" : "+rs3.getString("message")+"\n");
		}while(rs3.next());
		*/	
          
%>

<br />
<br />
<div>
<center>
<h1>Friends Interaction</h1>
<p>Select Friend</p>
<form method="post" action=profile.jsp>
	<input id="frienduserid" name="frienduserid" size="20" style="width: 378px; height: 44px"/>
	<input name="Submit2" type="submit" value="Go To Profile" /></form>
<p>Received Messages</p>

	<textarea name="received" readonly="readonly" style="width: 486px; height: 152px" ><%=received %></textarea>
	<p>Sent Messages</p>

	<textarea name="sent" readonly="readonly" style="width: 486px; height: 152px" ><%=sent%></textarea>
<p>Reply</p>
<form method="post" action=friends_submit.jsp onsubmit=send_message()>
	<textarea name="message" style="width: 494px; height: 59px"></textarea>
	<input name="friendtype" type="text" value="" />
	<p><input name="Submit1" type="submit" value="Send" /></p>
	</form>


</center>
</div>
</body>
</html>