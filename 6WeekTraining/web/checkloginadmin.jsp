<%-- 
    Document   : checkloginadmin
    Created on : Jul 27, 2017, 7:44:09 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%
   ResultSet rs=DBlayer.DBlayer.getResult("select * from admin where email='"+request.getParameter("t1")+"' or phno='"+request.getParameter("t1")+"'");
   if(rs.next());
   
    String id=DBlayer.DBlayer.getScalar("select email from admin where email='"+request.getParameter("t1")+"' or phno='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"'");
    if(id==null || id.equals(""))
        response.sendRedirect("adminlogin.jsp?p=2");
    else
    {
        session.setAttribute("iddd", "1");
      // session.setAttribute("email", request.getParameter("t1"));
     
        session.setAttribute("name","Admin");
        response.sendRedirect("welcome.jsp?r=2");
    }
%>