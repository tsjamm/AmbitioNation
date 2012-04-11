<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.sql.*";
%>
<%! StringBuffer dbmessages1 = new StringBuffer();
	StringBuffer dbmessages2 = new StringBuffer();
	StringBuffer dbmessages3 = new StringBuffer();
	String message= new String();
         ResultSet rs1,rs2,rs3;
          Statement st1,st2,st3;
    Connection con;
%>

<html>
<head>
<title>Groups</title>
<script type="text/javascript">
function show_messages()
{
	if(document.getElementById("group").value=="city")
	{
	<%
	message = dbmessages1.toString(); 
	%>;
	document.getElementById("grouptype").value="city";
	document.getElementById("postbox").value=<%= message %>;
	}
	if(document.getElementById("group").value=="state")
	{
	<% message = dbmessages2.toString(); %>;
	document.getElementById("grouptype").value="state";
	document.getElementById("postbox").value=<%= message %>;
	}
	if(document.getElementById("group").value=="work")
	{
	<% message = dbmessages3.toString(); %>;
	document.getElementById("grouptype").value="work";
	document.getElementById("postbox").value=<%= message %>;
	}
	
}
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@include  file="header_session.jsp"%>
<% 
          st1=con.createStatement();
          st2=con.createStatement();
          st3=con.createStatement();
         
          rs1=st1.executeQuery("select * from group where groupname='"+city+"' ");
          rs2=st2.executeQuery("select * from group where groupname='"+state+"' ");
          rs3=st3.executeQuery("select * from group where groupname='"+work+"' ");
 
          while(rs1.next()){
          dbmessages1.append(rs1.getString("citizenuserid")+" : "+rs1.getString("message")+"\n");
          }
		while(rs2.next()){	
		dbmessages2.append(rs2.getString("citizenuserid")+" : "+rs2.getString("message")+"\n");
		}
			
		while(rs3.next()){
		dbmessages3.append(rs3.getString("citizenuserid")+" : "+rs3.getString("message")+"\n");
		}
			
          
%>
<br />
<br />
<div>
	<center>
	<div>
		<h1>Groups:</h1>
		<p>Select Group</p>
		<form method="post">
			<select id="group" name="group" onchange="show_messages()" style="width: 378px; height: 44px">
				<option value="#">---Select Group---</option>
				<option value="city" selected="selected">City</option>
				<option value="state">State</option>
				<option value="work">WorkPlace</option>
			</select>
		</form>
		<p>Group Messages</p>
		<textarea id="postbox" name="TextArea1" readonly="readonly" style="width: 882px; height: 171px" onfocus="show_messages()"><%=message %></textarea>
		<p>Enter Post:</p>
		<form method="post" action="groups_submit.jsp">
			<textarea name="post" style="width: 494px; height: 59px"></textarea>
		<p></p>
		<select id="grouptype" name="grouptype"  style="width: 378px; height: 44px">
			<option value="#">---Select Group---</option>
			<option value="city" selected="selected">City</option>
			<option value="state">State</option>
			<option value="work">WorkPlace</option>
		</select>
    	<p><input name="Submit1" type="submit" value="Send" /></p>
		</form>
		<p>&nbsp;</p>
	</div>
</center>
</div>

</body>
</html>