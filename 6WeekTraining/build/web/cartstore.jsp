<%-- 
    Document   : cartstore
    Created on : Jul 24, 2017, 5:10:33 PM
    Author     : Waheguru21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String t;
    String d=DBlayer.DBlayer.getScalar("select price from menu where menuitemid='"+request.getParameter("r")+"'");
    String p=request.getParameter("abc");
    double total=0.0;
    total=(Double.parseDouble(d)*Double.parseDouble(p));
    DBlayer.DBlayer.executeq("insert into cart(id,menuitemid,quantity,total,price) values('"+session.getAttribute("id")+"','"+request.getParameter("r")+"' ,'"+request.getParameter("abc")+"','"+total+"','"+d+"')");
  //  out.print("insert into cart(id,menuitemid,quantity,total) values('"+/*session.getAttribute("id")*/1+"','"+request.getParameter("r")+"' ,'"+request.getParameter("abc")+"','"+total+"')");
    response.sendRedirect("order.jsp?q=3");
    %>
