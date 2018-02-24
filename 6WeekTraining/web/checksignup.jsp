<%-- 
    Document   : checksignup
    Created on : Jul 19, 2017, 4:32:54 PM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*,java.awt.*;" contentType="text/html" pageEncoding="UTF-8"%>
<%
   
    String r[]=request.getParameterValues("r1");
   // out.print("insert into customer(name,gender,phno,email,password,securityque,securityans) values('"+request.getParameter("name")+"','"+r[0]+"','"+request.getParameter("phno")+"','"+request.getParameter("email")+"','"+request.getParameter("pwd")+"','"+request.getParameter("sq")+"','"+request.getParameter("sa")+"' )");
   DBlayer.DBlayer.executeq("insert into customer(name,gender,phno,email,password,securityque,securityans) values('"+request.getParameter("name")+"','"+r[0]+"','"+request.getParameter("phno")+"','"+request.getParameter("email")+"','"+request.getParameter("pwd")+"','"+request.getParameter("sq")+"','"+request.getParameter("sa")+"')");
      response.sendRedirect("rr.jsp?q=3");
   //    response.sendRedirect("errorpage.jsp");
  
%>