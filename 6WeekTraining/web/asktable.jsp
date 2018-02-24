<%-- 
    Document   : asktable
    Created on : Jul 30, 2017, 9:53:53 PM
    Author     : Waheguru21
--%>


<%@ include file="customermenuheader.jsp"  %>
<td width="400" valign="middle" align="center">
<form name=frm method=post action="reorder.jsp" >
    <center>    
<table border=0 align="center" width="400" height="150" >
    <tr>
        <td colspan=2 align="center"><B><font size=3 color=Purple>Table No.?</td>  
    </tr>
    <tr>
        <td align="center"><b>Enter Table No. &nbsp;</td>
        <td><input type="text" name="tb"></td>
    <tr><td align="center"><input type="submit" value="Order"></td></tr>
</table>
</form>  
    <%String p=request.getParameter("id");
    session.setAttribute("order",p);%>
<%@ include file="customermenufooter1.jsp"  %>