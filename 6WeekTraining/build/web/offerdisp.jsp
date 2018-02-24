<%-- 
    Document   : offerdisp
    Created on : Jul 27, 2017, 9:05:43 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>


<marquee direction="up" height=200 onmouseover="stop()" onmouseout="this.start()">    
                    <%
                    ResultSet rsp=DBlayer.DBlayer.getResult("select * from offers where active=1 ");
                    while(rsp.next())
                        out.print("<br><b><font color=red size=5>"+rsp.getString(1)+"</b></font><br><font size=3 color=purple>"+rsp.getString(2)+"<font><hr>");
                    %>
                </marquee>
</for