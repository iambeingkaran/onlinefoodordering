<%-- 
    Document   : showcart
    Created on : Jul 28, 2017, 4:00:53 PM
    Author     : Waheguru21
--%>

<%@include file="customermenuheader.jsp" %>
<td width="500" valign="middle" align="center">
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body bgcolor="">
    <center>
        <h1>Your Cart</h1>
        <table border="1" cellspacing="0" width="400">
            <%
                int i=1;
                String t="";
                String a="";
                String q="";
                out.print("<tr bgcolor=pink><td>Sr.No</td><td>Image</td><td>ItemName</td><td>ItemDescription</td><td>Quantity</td><td>NetPrice</td><td>Remove?</td></tr>");
                ResultSet rs,rss,rst;
                rst=DBlayer.DBlayer.getResult("Select count(*),quantity,total from cart where id='"+session.getAttribute("id")+"'");
                    rst.next();
                    int n=rst.getInt(1);
                
                rss=DBlayer.DBlayer.getResult("select itemname from menu where menuitemid in(select menuitemid from cart where id='"+session.getAttribute("id")+"')");
                    rs=DBlayer.DBlayer.getResult("select image,description from menu where itemname in(select itemname from menu where menuitemid in(select menuitemid from cart where id='"+session.getAttribute("id")+"'))");
                    rst=DBlayer.DBlayer.getResult("select tempid,quantity,total from cart where id='"+session.getAttribute("id")+"'");
                    while(rss.next() && rs.next() && rst.next())
                    {
                        t=rss.getString(1);
                        q=rst.getString(1);
                            out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td>"+i+"</td><td><img src='"+rs.getString(1)+"' height=80 width=100></td><td>"+t+"</td><td width=100>"+rs.getString(2)+"</td><td>"+rst.getString(2)+"</td><td>"+rst.getString(3)+"</td><td><a href='deletefromcart.jsp?id="+q+"'>Delete</a></td></tr>");
                            i++; 
                            t="";
                     }
                         
            out.print("Total Number Of Items In Cart Are "+n);
        
       %>
    </table>
    <%
        if(request.getParameter("q")!=null)
        out.print("<br><br><font color=red size=5>ItemDeleted Succesfully");
        %>
    </center>
       
<%@ include file="customermenufooter.jsp"  %>