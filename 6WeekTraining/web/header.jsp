
<%-- 
    Document   : header
    Created on : Jul 15, 2017, 12:54:00 PM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
        if(session.getAttribute("iddd")==null)
            {
            response.sendRedirect("login.jsp?ses=exp");
            return;
            }
        
   out.print("<center>IP: "+request.getRemoteAddr()+" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Time: "+new java.util.Date()+"</center>");
%>

     <center>  <table border=1 width='1350' bordercolor="#000000">
       <tr> <td colspan=2 height=20 width=1000 bgcolor="#33CCCC"><font size=4 color=balck><marquee>Online Food Ordering Website </marquee></td></tr>
       <tr> <td colspan=2><center> <img src="images/cust.gif" width=1350 height=350 ></center></td></tr>
       <tr> <td colspan=2> Welcome <b><%= session.getAttribute("name") %> </b> (<a href=logout.jsp > Log out </a>)) </td></tr>
       <tr><td width=50 valign=top align='center' > 
               <br>
       <b><a href="addmenuitem.jsp" > Add New Item </a>
       <br><br><a href="additemfoto.jsp" > Add Item Photo </a>
       <br><br><a href='viewaddeditems.jsp'>View/Modify Menu Items</a>
      <!-- <br><br><a href='modifymenuitemm.jsp'>Modify Menu Items</a>   --> 
       <br><br><a href="pendingorders.jsp" >Change Order Status </a> 
       <br><br><a href="viewallorderstoadmin.jsp" >All Orders</a>
       <br><br><a href='addnewoffer.jsp'>Add New Offer</a>  
       <br><br><a href='viewalloffers.jsp'>All Offers</a>
       <br><br><a href='managecustomerpoints.jsp'>Manage Customer Points</a>
       
       </b></td>
   
      
      <!--<td valign=top >
       <br><a href="welcome.jsp" >Home </a> </td>
       <td align=up>-->