<%-- 
    Document   : viewaddeditems
    Created on : Jul 21, 2017, 10:47:51 AM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>

<td width='100' align='center' bgcolor="">
<%@page language="java" import="java.sql.*,java.util.*,javax.swing.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Menu</title>
    </head>
    <body>
    <center>
        <h1><font size=6 color=Purple>Available Menu</h1></font>
        <table border="1">
            <script type="text/javascript">
                if(<%=request.getParameter("p")%>!=null)
                 alert("Item Deleted Succesfully");
                 else if(<%=request.getParameter("q")%>!=null)
                 {
                     alert("MenuItem Updated");
                     
                 }
</script>
            <%
        
        //if(request.getParameter("p")!=null)
            //out.println("<br><h2><center>Menu Item Deleted Succesfully</center></h2><br>");
            
        //if(request.getParameter("q")!=null)
          //  out.println("<br><h2><center>Menu Item Updated Succesfully<center></h2><br>");
    %>
    
    
            <%
                String a="";
                out.print("<tr bgcolor=pink><td>ItemID</td><td>Image</td><td>ItemName</td><td>ItemType</td><td>Price</td><td>Description</td><td>Active/Inactive</td><td>Delete?</td><td>Edit</td></tr>");
        ResultSet rs;
        rs=DBlayer.DBlayer.getResult("Select count(*) from menu");
        rs.next();
        int n=rs.getInt(1);
               int i=0; 
	rs=DBlayer.DBlayer.getResult("select * from menu");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
                if(rs.getString(6).equals("1"))
                    a="checked";
                else
                    a="";
                out.print("<tr  "+(i%2==0?"bgcolor=lightblue":"")+" ><td>"+rs.getString(1)+"</td><td><img src="+rs.getString(7)+" height=100 width=80></td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><input type=checkbox "+a+" disabled></td><td><a href='deletemenuitem.jsp?id="+rs.getString(1)+"'>Remove</a></td><td><a href='test2.jsp?id="+rs.getString(1)+"'>Edit</a></td></td></tr>");
            i++;
            }             
            out.print("<font size=5>Total Number Of Menu Items Are <b>"+n);
        }
        catch(Exception ex)
        {
        }
        %>
    </table>
    </center>
    
    </body>
</html>

<%@ include file="footer.jsp"  %>