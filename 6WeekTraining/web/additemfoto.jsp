<%-- 
    Document   : additemfoto
    Created on : Jul 27, 2017, 3:53:39 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

<%@ include file="header.jsp"  %>
<td width='100' valign="center">

    <form name="fr00m" method="post" action="additemphoto.jsp">
<table border="0" align="center">
    <tr><td align="center" colspan="2"><font size=6 color=Purple><b>Upload Menu Item Image</td></tr><br>    
    <tr><td align="left"><b><br><br>Select Itemid &nbsp; </td><td><br><br><select name='javas'>
    <% ResultSet rs=DBlayer.DBlayer.getResult("select menuitemid from menu");
    while(rs.next())
    out.print("<option>"+rs.getString(1)+"</option>");

    %>
                </select></td></tr>
        <tr><td colspan="2" align="center"><input type="submit" value="Upload" ><td></tr>
</table>   
</form>

                <%@ include file="footer.jsp"  %>             