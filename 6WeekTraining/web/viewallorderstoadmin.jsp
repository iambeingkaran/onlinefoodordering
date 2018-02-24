<%-- 
    Document   : viewallorderstoadmin
    Created on : Jul 30, 2017, 4:24:21 PM
    Author     : Waheguru21
--%>
<%@include file="header.jsp" %>
<td width="400">
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body bgcolor="">
    <center>
        <h1><font size=6 color=Purple>All Orders</h1></font>
        <table border="1" cellspacing="0" width="700">
            <%
                int i=0;
                String t="";
                String a="";
                out.print("<tr bgcolor=pink><td>OrderID</td><td>OrderData</td><td>OrderDate</td><td>TotalAmount</td><td>Status</td></tr>");
        ResultSet rs,rss;
        rs=DBlayer.DBlayer.getResult("Select count(*) from orders ");
        rs.next();
        int n=rs.getInt(1);
        
        rss=DBlayer.DBlayer.getResult("select itemname from menu where menuitemid in(select menuitemid from orderdetails where orderid in(select orderid from orders ))");
        while(rss.next())
        {
         
            t=t+""+rss.getString(1)+",";
        }
        
     //   out.print(t);        
	rs=DBlayer.DBlayer.getResult("select * from orders");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
              //  if(rs.getString(6).equals("1"))
           //         a="checked";
             //   else
            //        a="";
                out.print("<tr  "+(i%2==0?"bgcolor=lightblue":"")+" ><td>"+rs.getString(1)+"</td><td>"+t+"</td><td>"+rs.getString(5)+"</td><td width=100>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
           i++; }             
            out.print("<font size=5>Total Number Of Orders Are <b>"+n);
        }
        catch(Exception ex)
        {
            out.print(ex);
        }
       %>
    </table>
    </center>
       
<%@ include file="footer.jsp"  %>