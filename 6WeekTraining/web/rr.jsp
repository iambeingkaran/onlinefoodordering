<%-- 
    Document   : rr
    Created on : Jul 27, 2017, 2:43:39 PM
    Author     : Waheguru21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
if(request.getParameter("q")!=null)
    response.sendRedirect("login.jsp?q=2");
else
    response.sendRedirect("errorpage.jsp");
%>


