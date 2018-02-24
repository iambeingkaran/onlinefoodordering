<%-- 
    Document   : additemphoto
    Created on : Jul 25, 2017, 11:10:05 PM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100' valign="center">
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<form name="fr0m" method="post" action="uploadfile.jsp" enctype="multipart/form-data">
<table border="0" align="center">
    <tr><td align="center" colspan="2"><font size=6 color=Purple><b>Upload Menu Item Image</td></tr>
    <tr><td><b> Select Photo </td><td><input type="file" name="filename" required ></td></tr>
        <br>
        <tr><td colspan="2" align="center"><input type="submit" value="Upload" ><td></tr>
</table>   
</form>
<%
    String t=request.getParameter("javas");
    session.setAttribute("imagename", t);
DBlayer.DBlayer.executeq("update menu set image='pics/"+t+".jpg' where menuitemid='"+t+"'");
%>
                
<%@ include file="footer.jsp"  %>             