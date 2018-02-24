<%-- 
    Document   : checklogin
    Created on : Jul 18, 2017, 11:58:19 AM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*,java.util.Date,java.text.SimpleDateFormat" contentType="text/html" pageEncoding="UTF-8"%>
<%
    Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");  
    String strDate= formatter.format(date);
    ResultSet rss;
   ResultSet rs=DBlayer.DBlayer.getResult("select * from customer where email='"+request.getParameter("t1")+"' or phno='"+request.getParameter("t1")+"'");
   if(rs.next());
   
    String id=DBlayer.DBlayer.getScalar("select email from customer where (email='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"') or (phno='"+request.getParameter("t1")+"' and password='"+request.getParameter("t2")+"')");
    if(id==null || id.equals("") || request.getParameter("t2").contains("="))
        response.sendRedirect("login.jsp?p=2");
    else
    {
        session.setAttribute("id", rs.getString("id"));
       session.setAttribute("email", request.getParameter("t1"));
     session.setAttribute("phno",rs.getString("phno"));
        session.setAttribute("name",rs.getString("name"));
        rss=DBlayer.DBlayer.getResult("select * from offers");
        while(rss.next())
        {
            if(rss.getString(4).compareTo(strDate)==-1)
                DBlayer.DBlayer.executeq("update offers set active=0 where offerid='"+rss.getString(6)+"'");
                        
        }
    response.sendRedirect("welcomecustomer.jsp?q=2");
    }

%>