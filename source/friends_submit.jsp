<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%! StringBuffer dbmessages1 = new StringBuffer();
	StringBuffer dbmessages2 = new StringBuffer();
	StringBuffer dbmessages3 = new StringBuffer();
	String message = new String();
	String friend=new String();
	String user=new String();
         ResultSet rs1,rs2,rs3;
          Statement st;
%>
<% 
		try{
		message = request.getParameter("message");
		friend = request.getParameter("friendtype"); 
		user=(String)session.getAttribute("userid"); 
		  Connection con;
          //out.println("driver");
          Class.forName("com.ibm.db2.jcc.DB2Driver");
    	  //out.println();
    	  con = DriverManager.getConnection("jdbc:db2:DBTEST");
          //out.println("...connection complete");
          //Class.forName("COM.ibm.db2.jdbc.jcc.DB2Driver");
          //con=DriverManager.getConnection("jdbc:db2://localhost:50000/DBTEST:retrieveMessagesFromServerOnGetMessage=true","jammala","sailight");
          st=con.createStatement();
          //out.println();
          //rs1=st.executeQuery("select * from group where groupname='"+city+"' where count(*)=10 ");
         // rs2=st.executeQuery("select * from group where groupname='"+state+"' where count(*)=10 ");
         // rs3=st.executeQuery("select * from group where groupname='"+work+"' where count(*)=10 ");
          st.executeUpdate("insert into message values ('"+message+"','"+user+"','"+friend+"')");
          
      /*    do{
          dbmessages1.append(rs1.getString("citizenuserid")+" : "+rs1.getString("message")+"\n");
          }while(rs1.next());
		do{	
		dbmessages2.append(rs2.getString("citizenuserid")+" : "+rs2.getString("message")+"\n");
		}while(rs2.next());
			
		do{
		dbmessages3.append(rs3.getString("citizenuserid")+" : "+rs3.getString("message")+"\n");
		}while(rs3.next());
		*/	
          }
          catch(Exception e){out.println(e);}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Updated</title>


</head>


<body>
<h2>Message Posted. Redirecting Back</h2>
             <script type="text/javascript">
              window.location = './friends.jsp';
              </script>
</body>

</html>
