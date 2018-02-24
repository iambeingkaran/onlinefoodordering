<%-- 
    Document   : viewalloffers
    Created on : Jul 27, 2017, 8:01:28 PM
    Author     : Waheguru21
--%>

<%@ include file="header.jsp"  %>

<td width='100' align='center' bgcolor="">
<%@page language="java" import="java.sql.*,java.util.*,javax.swing.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
    <center>
        <h1><font size=6 color=Purple><b>ALL OFFERS</h1></b></font>
        <table border="1" width="100 height=100" cellpadding="10">
            <script type="text/javascript">
                if(<%=request.getParameter("p")%>!=null)
                 alert("Offer Deleted Succesfully");
                 else if(<%=request.getParameter("q")%>!=null)
                 {
                     alert("Offer Updated");
                     
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
                out.print("<tr bgcolor=pink><td>OfferID</td><td>OfferName</td><td>Valid From</td><td>Valid To</td><td>Description</td><td>Active/Inactive</td><td>Delete?</td><td>Edit</td></tr>");
        ResultSet rs;
        rs=DBlayer.DBlayer.getResult("Select count(*) from offers");
        rs.next();
        int n=rs.getInt(1);
               int i=0; 
	rs=DBlayer.DBlayer.getResult("select * from offers");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
                if(rs.getString(5).equals("1"))
                    a="checked";
                else
                    a="";
                out.print("<tr  "+(i%2==0?"bgcolor=lightblue":"")+" ><td>"+rs.getString(6)+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(2)+"</td><td><input type=checkbox "+a+" disabled></td><td><a href='deleteoffer.jsp?id="+rs.getString(6)+"'>Remove</a></td><td><a href='modifyoffer.jsp?id="+rs.getString(6)+"'>Edit</a></td></td></tr>");
            i++;
            }             
            out.print("<font size=5>Total Number Of Offers Are<b> "+n+"<br>");
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