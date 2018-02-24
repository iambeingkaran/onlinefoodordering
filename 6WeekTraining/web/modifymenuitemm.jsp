<%-- 
    Document   : modifymenuitemm.jsp
    Created on : Jul 27, 2017, 10:07:36 AM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100' valign="center">

<form name=frm method=post action="modifymenuitem.jsp" >
    <center>    
<table border=0 align="center" width="400" height="150" >
    <tr>
        <td colspan=2 align="center"><B><font size=6 color=Purple>Modify</td>  
    </tr>
    <tr>
        <td align="center"><b>Enter Menu Item id &nbsp;</td>
        <td><select name='id'>
    <% ResultSet rs=DBlayer.DBlayer.getResult("select menuitemid from menu");
    while(rs.next())
    out.print("<option>"+rs.getString(1)+"</option>");

    %>
                </select></td></tr>
     
    <tr><td align="center"><input type="submit" value="Go"></td></tr>
</table>
</form>   
<%@ include file="footer.jsp"  %>