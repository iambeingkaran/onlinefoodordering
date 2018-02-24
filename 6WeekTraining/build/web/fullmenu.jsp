<%-- 
    Document   : fullmenu
    Created on : Jul 23, 2017, 3:52:58 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*,java.awt.*;" contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="customermenuheader.jsp" %>
<td width="500" valign="middle" align="center">
<table  align="center" >
    <tr>
        <td align=center>  <h1><font color=babypink>Available Menu</h1></font>   
<table border="1" cellspacing="0" bordercolor="black">
                 <tr bgcolor=cream bordercolor="black" >
    <td align=center width="80">Image</td>
    <td align=center width="100">ItemName</Td>
    <td align=center >Type</td>
    <td align=center width="50">Price</td>
    <td align=center>Description</td>
</tr>

<% String s;
int i=0;
   s="select image,itemname,type,price,description,menuitemid from menu";	
    ResultSet rss=DBlayer.DBlayer.getResult(s);

    if(request.getParameter("q")!=null)
    {
        rss=DBlayer.DBlayer.getResult("select image,itemname,type,price,description,menuitemid from menu where active='1'");
    while(rss.next())
    {
    out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td align=center ><img src="+rss.getString(1)+" height=80 width=60></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td></tr>");
    i++;}
    }
    
    else if(request.getParameter("r")!=null)
    {
        rss=DBlayer.DBlayer.getResult("select image,itemname,type,price,description,menuitemid from menu where type='Burgers' or type='Fries'  and active='1'");
    while(rss.next())
    {
out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td align=center ><img src="+rss.getString(1)+" height=80 width=60></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td></tr>");   
i++;}
    }
    
    else if(request.getParameter("s")!=null)
    {
        rss=DBlayer.DBlayer.getResult("select image,itemname,type,price,description,menuitemid from menu where type='Pizzas' or type='Wraps'  and active='1'");
    while(rss.next())
    {
out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td align=center><img src="+rss.getString(1)+" height=80 width=60></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td></tr>");
    i++;}
        
    }
    
else if(request.getParameter("t")!=null)
    {
        rss=DBlayer.DBlayer.getResult("select image,itemname,type,price,description,menuitemid from menu where type='Sides' or type='Deserts' and active='1' ");
    while(rss.next())
    {
out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td align=center><img src="+rss.getString(1)+" height=80 width=60></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td></tr>");    
i++;}
        
    }
    else if(request.getParameter("u")!=null)
    {
        rss=DBlayer.DBlayer.getResult("select image,itemname,type,price,description,menuitemid from menu where type='Beverages'  and active='1'");
    while(rss.next())
    {
out.print("<tr  "+(i%2==0?"bgcolor=gray":"")+" ><td align=center ><img src="+rss.getString(1)+" height=80 width=60></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td></tr>");   
i++;}
        
    }

    %>
    <br>
</table>
</table>
    
<%@include file="customermenufooter1.jsp" %>
