<%-- 
    Document   : checkaddnewoffer
    Created on : Jul 27, 2017, 8:03:44 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
   String a=request.getParameter("check")==null?"0":"1";
 //  out.print("insert into offers(oname,ofrom,oto,description,active) values('"+request.getParameter("name")+"','"+request.getParameter("from")+"','"+request.getParameter("to")+"','"+request.getParameter("description")+"' ,"+a+")"); 
   if(DBlayer.DBlayer.executeq("insert into offers(oname,ofrom,oto,description,active) values('"+request.getParameter("name")+"','"+request.getParameter("from")+"','"+request.getParameter("to")+"','"+request.getParameter("description")+"' ,"+a+")")) 
   response.sendRedirect("welcome.jsp?qs=3");
%>