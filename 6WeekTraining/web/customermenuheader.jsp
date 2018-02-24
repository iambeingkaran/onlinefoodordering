<%-- 
    Document   : customermenu
    Created on : Jul 23, 2017, 3:44:57 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

        <%
  //      if(session.getAttribute("eid")==null)
          //  {
  //          response.sendRedirect("index.jsp?ses=exp");
  //          return;
  //          }
        
  // out.print("IP: "+request.getRemoteAddr()+" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Time: "+new java.util.Date());
%>

     <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        if(session.getAttribute("id")==null)
            {
            response.sendRedirect("login.jsp?ses=exp");
            return;
            }
        
   out.print("<center>IP: "+request.getRemoteAddr()+" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Time: "+new java.util.Date()+"</center>");
%>

     <!--<center>  <table border=1 width='1350'>
       <tr> <td colspan=3 height=20 width=1000 bgcolor="#33CCCC"></td></tr>
       <tr> <td colspan=3><center> <img src="images/HD.jpg" width=800 height=150 ></center></td></tr>
       <tr> <td colspan=3> Welcome <b><%= session.getAttribute("name") %> </b> (<a href=logout.jsp > Log out </a>) </td></tr>
       <tr><td width=20 valign=top align='center' > 
               <br>
       <b><a href="addmenuitem.jsp" > Add New Item </a>
       <br><br><a href="additemfoto.jsp" > Add Item Photo </a>
       <br><br><a href='viewaddeditems.jsp'>View Menu Items</a>
       <br><br><a href='modifymenuitemm.jsp'>Modify Menu Items</a>    
       <br><br><a href="pendingorders.jsp" >Change Order Status </a> 
       <br><br><a href='addnewoffer.jsp'>Add New Offer</a>  
       <br><br><a href='viewalloffers.jsp'>All Offers</a>
       
       </b></td> -->
     
     <table width="700" height="581" border="1" cellpadding="0" cellspacing="0" bordercolor="#000000" >
  <tr>
      <td height="30" colspan="3" bgcolor="#CC6633"><font size=4 color=white><marquee>Online Food Ordering Website </marquee></td>
  </tr>
  <tr>
    <td height="213" colspan="3"><center> <img src="images/user.gif" width=1078 height=210 >
    </center></td>
  </tr>
  <tr>
    <td colspan="3" height="10"> Welcome <b><%= session.getAttribute("name") %> </b> (<a href=logout.jsp > Log out </a>)</td>
  </tr>
  
  <tr>
    <td width="212" height="278" valign="top" align="center">
	<br>
       <b><a href="fullmenu.jsp?q=2" > FullMenu </a>
       <br><br><a href="order.jsp" > Order </a>
       <br><br><a href="showcart.jsp" > Cart </a>
       <br><br><a href='viewcustomerorder.jsp'>View My Orders</a>
       <br><br><a href='modifydetails.jsp'>Edit Profile</a>    
       <br><br><a href="resetpassword.jsp" >Change Password </a> 
       <br><br><a href="points.jsp" >Points Check</a> 
       
       </b>
	
	
	</td>
        