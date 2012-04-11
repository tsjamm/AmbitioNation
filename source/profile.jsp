<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@page
	language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
%>
<html>
<head>
<title>profile</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="style.css" rel="stylesheet" type="text/css">
</head>
<body>

<%@include  file="header_session.jsp"%>
<%@include  file="db.jsp" %>

<%!
		String pambition;
		String puid;
        String pfname;
        String plname;
        String pcity;
        String pstate;
        String pwork;
        String pstudy;
      	int rating1;
%>
<%
      puid = (String)request.getParameter("puid");
      if(request.getParameter("puid") == null)
      	puid=uid;
      try
      {
          ResultSet rs;
          Statement st;
          st=con.createStatement();
          rs=st.executeQuery("select * from user where userid='"+puid+"' ");
          
          while(rs.next()){
          ambition=rs.getString("ambition");
          fname=rs.getString("fname");
          lname=rs.getString("lname");
          city=rs.getString("city");
          state=rs.getString("state");
          work=rs.getString("work");
          study=rs.getString("study");
          rating1 = rs.getInt("rating");
          }
          //out.println(uid);
          //out.println(pa);
		//out.println(plainText1);
		           
         }
   
      catch(Exception e)
      {
      out.println(e);
      }
    
%>

<div align="center" style="font-family: Georgia; margin:0; padding:0; color:#26292b; font-size:12px; width:100%; background:url(images/IndexBackground.png) repeat-x left top #f5f6f8">
  <center>
<form name="editprofile" onsubmit="return formValidation();" action="editprofile.jsp" method="POST">
<table height="1" cellspacing="1" width="67%" border="1" style=" background: images/bubble.png ">
  <tbody>
    <tr>
      <td width="100%" height="1" >
        
          <div align="right">
          <table cellspacing="1" width="100%" border="0" height="240">
            <tbody>
              <tr>
                <td width="100%" height="25" colspan="2"><b><i><font size="4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <marquee width="249" height="22" behavior="alternate" scrollamount="4">User
                  Profile </marquee>
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</font></i></b></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>Ambition</b></td>
                <td width="63%" height="25"><b><% out.println(ambition); %></b></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>UserName</b></td>
                <td width="63%" height="25"><b><% out.println(uid); %></b></td>
                <% if(puid == uid)
                {%>
                <td width="63%" height="25"><input type="submit" value="Edit Profile" name="B2"></td> 
                <% } %>
              </tr>
              
              <tr>
                <td width="37%" height="28"><b>First Name</b></td>
                <td width="63%" height="28"><b><% out.println(fname); %></b></td>
              </tr>
              <tr>
                <td width="37%" height="28"><b>Last Name</b></td>
                <td width="63%" height="28"><b><% out.println(lname); %></b></td>
              </tr>
              <tr>
                <td width="37%" height="25"><b>City</b></td>
                <td width="63%" height="25"><b><% out.println(city); %></b></td>
              </tr>
              
              <tr>
                <td width="37%" height="25"><b>State</b></td>
                <td width="63%" height="25"><b>
                <%
                              if(state.equals("AN")) out.println("Andaman and Nicobar Islands");
                		      if(state.equals("AP")) out.println("Andhra Pradesh");        
                		      if(state.equals("AR")) out.println("Arunachal Pradesh");
                		      if(state.equals("AS")) out.println("Assam");
                              if(state.equals("BR")) out.println("Bihar");
                              if(state.equals("CH")) out.println("Chandigarh");
                		      if(state.equals("CT")) out.println("Chhattisgarh");
                			  if(state.equals("DN")) out.println("Dadra and Nagar Haveli");
                			  if(state.equals("DD")) out.println("Daman and Diu");
                			  if(state.equals("DL")) out.println("Delhi");
                			  if(state.equals("GA")) out.println("Goa");
                			  if(state.equals("GJ")) out.println("Gujarat");
                			  if(state.equals("HR")) out.println("Haryana");
                			  if(state.equals("HP")) out.println("Himachal Pradesh");
                			  if(state.equals("JK")) out.println("Jammu and Kashmir");
                			  if(state.equals("JR")) out.println("Jharkhand");
                			  if(state.equals("KA")) out.println("Karnataka");
                			  if(state.equals("KL")) out.println("Kerala");
                			  if(state.equals("LD")) out.println("Lakshadweep");
                			  if(state.equals("MP")) out.println("Madhya Pradesh");
                			  if(state.equals("MH")) out.println("Maharashtra");
                			  if(state.equals("MN")) out.println("Manipur");
                			  if(state.equals("ML")) out.println("Meghalaya");
                			  if(state.equals("MZ")) out.println("Mizoram");
                			  if(state.equals("NL")) out.println("Nagaland");
                			  if(state.equals("OR")) out.println("Orissa");
              			      if(state.equals("PY")) out.println("Pondicherry");
                			  if(state.equals("PB")) out.println("Punjab");
                			  if(state.equals("RJ")) out.println("Rajasthan");
                			  if(state.equals("SK")) out.println("Sikkim");
                			  if(state.equals("TN")) out.println("Tamil Nadu");
                			  if(state.equals("TR")) out.println("Tripura");
                			  if(state.equals("UL")) out.println("Uttaranchal");
                			  if(state.equals("UP")) out.println("Uttar Pradesh");
                			  if(state.equals("WB")) out.println("West Bengal");
            %></b>
                </td>
              </tr>
              
                            
              <tr>
                <td width="37%" height="27"><b>Current Work Place</b></td>
                <td width="63%" height="27"><b><% out.println(work); %></b></td>
              </tr>
              <tr>
                <td width="37%" height="27"><b>Highest Education</b></td>
                <td width="63%" height="27"><b><% out.println(study); %></b></td>
              </tr>
            </tbody>
          </table>
          </div>
          
      </td>
    </tr>
  </tbody>
</table>
</form>
</center>
</div>

</body>
</html>