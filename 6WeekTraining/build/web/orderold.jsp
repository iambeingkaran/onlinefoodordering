<%-- 
    Document   : order
    Created on : Jul 23, 2017, 1:52:50 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*"%>

<%@ include file="customermenuheader.jsp"  %>
<td width="200" valign="top" align="center">
<h1><font color=babypink>Please Choose From Our Menu</h1>
<table width="700" >
    <tr>
        <td>     
<table border="1" cellspacing="0" bordercolor="black">
    
            
    <tr bgcolor=lightpink >
                 <tr bgcolor=lightyellow >
    <td>Image</td>
    <td>ItemName</Td>
    <td>Type</td>
    <td>Price</td>
    <td>Description</td>
    <td>Quantity</td>
    <td>Add To Cart</td>
</tr>
<%
   String s;    
   s="select image,itemname,type,price,description,menuitemid from menu";	
    ResultSet rss=DBlayer.DBlayer.getResult(s);
	
        try
        {
    
        while(rss.next())
        out.print("<form name=frmm method=post action=cartstore.jsp?r="+rss.getString("menuitemid")+"><tr bgcolor=lightyellow ><td><img src="+rss.getString(1)+" height=100 width=80></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td><td><select name=abc><option  value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option  value=5>5</option><option value=6>6</option>6</select></td><td><input type=submit value=Add></td></tr></form>");
        }
        catch(Exception t){ out.print("<tr><td>"+t+"</td></tr>"); }
%>

            <%
                
                if(request.getParameter("q")!=null)
                     out.print("<br><b><font color=Green ><center>Added To Cart Successfully</center></font></b>");
                else if(request.getParameter("r")!=null)
                     out.print("<br><b><font color=Green ><center>Added To Cart Successfully</center></font></b>");
              %>     
           
</tabLe>
</table>
<%@include file="customermenufooter.jsp" %>
              