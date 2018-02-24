<%-- 
    Document   : forgotpassword
    Created on : Jul 20, 2017, 4:26:09 PM
    Author     : Waheguru21
--%>
<%@ include file="welcomeheader.jsp"  %>
<%@page language="java" import="java.sql.*,java.util.*,java.awt.*;" contentType="text/html" pageEncoding="UTF-8"%>
<form name=form5 method=post action="checkforgotpassword.jsp" >
<table border=0 width=300 height='200' align="center">
    <tr>
        <td colspan=2 align="center">Forgot Password Page</td>  
    </tr>
     <tr>
        <td>Enter Email</td>
        <td><input type=text name=t1 required></td>
     
    </tr>
    <tr>
        <td colspan="2" align=center>
            <input type=submit value="submit" >
        </td>
    </tr>
</table>
</form>
<%@ include file="welcomefooter.jsp"  %> 