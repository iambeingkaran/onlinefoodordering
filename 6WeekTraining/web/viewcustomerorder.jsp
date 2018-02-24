<%-- 
    Document   : viewcustomerorder
    Created on : Jul 24, 2017, 10:42:11 PM
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
        <h1>Your Past Orders</h1>
        <table border="1" cellspacing="0" width="400">
            <%
                int i=0;
                String t="";
                String a="";
                out.print("<tr bgcolor=pink><td>OrderID</td><td>OrderData</td><td>OrderDate</td><td>TotalAmount</td><td>Reorder?</td></tr>");
        ResultSet rs,rss;
        rs=DBlayer.DBlayer.getResult("Select count(*) from orders where email='"+session.getAttribute("email")+"'");
        rs.next();
        int n=rs.getInt(1);
        
        rss=DBlayer.DBlayer.getResult("select itemname from menu where menuitemid in(select menuitemid from orderdetails where orderid in(select orderid from orders where email='"+session.getAttribute("email")+"'))");
        while(rss.next())
        {
         
            t=t+""+rss.getString(1)+",";
        }
     //   out.print(t);        
	rs=DBlayer.DBlayer.getResult("select * from orders where email='"+session.getAttribute("email")+"'");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
              //  if(rs.getString(6).equals("1"))
           //         a="checked";
             //   else
            //        a="";
                out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td>"+rs.getString(1)+"</td><td>"+t+"</td><td>"+rs.getString(5)+"</td><td width=100>"+rs.getString(3)+"</td><td><a href='asktable.jsp?id="+rs.getString(1)+"'>ReOrder</a></td></tr>");
           i++; }             
            out.print("Total Number Of Orders Are "+n);
        }
        catch(Exception ex)
        {
            out.print(ex);
        }
       %>
    </table>
    </center>
       
<%@ include file="customermenufooter1.jsp"  %>