<%-- 
    Document   : deletemenuitem
    Created on : Jul 21, 2017, 10:58:07 AM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

        <%
       /*     String a,b,c,d,e,f;
            ResultSet rs=DBlayer.DBlayer.getResult("Select * from menu where menuitemid="+request.getParameter("id"));
            if(rs.next())
            {
                a=rs.getString(1);
                b=rs.getString(2);
                c=rs.getString(3);
                d=rs.getString(4);
                e=rs.getString(4);
                f=rs.getString(5);
                
            }*/
            DBlayer.DBlayer.executeq("delete from menu where menuitemid="+request.getParameter("id"));
            response.sendRedirect("viewaddeditems.jsp?p=2");
                    %>
