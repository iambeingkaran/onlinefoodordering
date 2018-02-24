<%-- 
    Document   : checkresetpassword
    Created on : Jul 19, 2017, 1:53:18 PM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
    String t=request.getParameter("t1");
    String q=DBlayer.DBlayer.getScalar("select password from customer where email='"+session.getAttribute("id")+"' or phno='"+session.getAttribute("phno")+"'");
    if(request.getParameter("t2").equals(request.getParameter("t3"))==false)
   {    response.sendRedirect("resetpassword.jsp?p=3");
   }
   else if(t.equals(q)==false)
    {
    response.sendRedirect("resetpassword.jsp?q=2");
    }
   else
   { 
       DBlayer.DBlayer.executeq("update customer set password='"+request.getParameter("t3")+"' where id='"+session.getAttribute("id")+"'");
        response.sendRedirect("welcomecustomer.jsp?rr=3");
  }

%>