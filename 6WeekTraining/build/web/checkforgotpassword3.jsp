<%-- 
    Document   : checkforgotpassword3
    Created on : Jul 25, 2017, 1:19:09 PM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String t=request.getParameter("t2");
    String q=DBlayer.DBlayer.getScalar("select password from customer where email='"+session.getAttribute("id")+"' or phno='"+session.getAttribute("phno")+"'");
    if(request.getParameter("t2").equals(request.getParameter("t3"))==false)
   {    response.sendRedirect("checkforgotpassword.jsp?p=3");
   }
   else
   { 
       DBlayer.DBlayer.executeq("update customer set password='"+request.getParameter("t3")+"' where id='"+request.getParameter(    "id")+"'");
        response.sendRedirect("login.jsp?r=3");
  }
%>
