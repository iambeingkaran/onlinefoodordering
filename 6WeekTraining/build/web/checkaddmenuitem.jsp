<%-- 
    Document   : checkaddmenuitem
    Created on : Jul 21, 2017, 9:39:24 AM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
   String a=request.getParameter("check")==null?"0":"1";
    if(DBlayer.DBlayer.executeq("insert into menu(itemname,price,type,description,active) values('"+request.getParameter("name")+"','"+request.getParameter("price")+"','"+request.getParameter("abc")+"','"+request.getParameter("description")+"' ,"+a+")")); 
   response.sendRedirect("welcome.jsp?q=3");
%>