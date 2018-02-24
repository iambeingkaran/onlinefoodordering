<%-- 
    Document   : editmenuitem
    Created on : Jul 21, 2017, 11:06:37 AM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Modify </title>
    </head>
    <body bgcolor="LemonChiffon">
        
        <%
                String t=request.getParameter("id");
                ResultSet rs;
                rs=DBlayer.DBlayer.getResult("Select * from menu where menuitemid="+request.getParameter("id"));
                try
                {
                    rs.next();
                }
                catch(Exception ex)
                {
                    
                }        
                    %>
            <h1>Modify Books</h1>
            <form name="frm22" method="post" action=modifiedpg.jsp?id=<% out.print(t); %>>
             ItemName &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t1" value='<% out.print(rs.getString(2)); %>'/><br><br> 
             ItemType &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input type="text" name="t2" value='<% out.print(rs.getString(3));%>'/><br><br>
             Description &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<textarea name="t3" value='<% out.print(rs.getString(4));%>'></textarea><br><br>
             Price &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="t4" value='<% out.print(rs.getString(5)); %>'/> <br><br>
             
             <%
            if(request.getParameter("q")!=null)
            out.println("<br>Item Updated<br>");
            %>
             
               <input type="submit" value="Update"> 
            </form>   
            
    </body>
</html>
