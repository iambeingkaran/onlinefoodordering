<%-- 
    Document   : checkforgotpassword
    Created on : Jul 20, 2017, 4:51:32 PM
    Author     : Waheguru21
--%>
<%@ include file="welcomeheader.jsp"  %>
<%@page language="java" import="java.sql.*,java.util.*,java.awt.*;" contentType="text/html" pageEncoding="UTF-8"%>
<% String s=DBlayer.DBlayer.getScalar("select securityque from customer where email='"+request.getParameter("t1")+"'"); %>
<form name=form5 method=post action="checkforgotpassword2.jsp?id=<%= request.getParameter("t1")%>" >
    <table border=0 width=200 height=200 >
    <tr>
        <td colspan=2 align="center">Forgot Password Page</td>  
    </tr>
     
        <td>Security Question </td>
        <td><input type=text name=t1 value='<%= s %>' readonly ></td>
       
         <tr>
        <td>Your Answer</td>
        <td><textarea name=r1 ></textarea></td>  
    </tr>
    <td colspan="2" align=center>
            <input type=submit value="submit" >
        </td>


        <%
          if(request.getParameter("r")!=null)
              out.print("<tr><td colspan=2 align=center><font color=red>Password Changed Succesfully</font></td></tr>");
          else if(request.getParameter("p")!=null)
              out.print("<tr><td colspan=2 align=center><font color=red>Password Fields Doesnot Match</font></td></tr>");%>
              </table>
</form>
              
              <%@ include file="welcomefooter.jsp"  %>