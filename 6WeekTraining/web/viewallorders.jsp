<%-- 
    Document   : pendingorders
    Created on : Jul 26, 2017, 4:22:23 PM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100' valign="center">

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>


 <center>
        <h1>Order Status</h1>
     
        <table border="1">
            <%
                out.print("<form name=javas action=changeorderstatus.jsp  method=post '>");
                String t="";
                String a="";
                out.print("<tr bgcolor=pink><td>OrderID</td><td>OrderData</td><td>OrderDate-Time</td><td>TotalAmount</td><td>Status</td></tr>");
        ResultSet rs,rss;
        rs=DBlayer.DBlayer.getResult("Select count(*) from orders where orderstatus='Pending'");
        rs.next();
        int n=rs.getInt(1);
        
        rss=DBlayer.DBlayer.getResult("select itemname from menu where menuitemid in(select menuitemid from orderdetails where orderid in(select orderid from orders))");
        while(rss.next()==true)
        {
         
            t=t+""+rss.getString(1)+",";
        }
      //  out.print(t); 
         int i=0;
	rs=DBlayer.DBlayer.getResult("select * from orders");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
              //  if(rs.getString(6).equals("1"))
           //         a="checked";
             //   else
            //        a="";
                out.print("<tr  "+(i%2==0?"bgcolor=lightblue":"")+" ><td>"+rs.getString(1)+"</td><td>"+t+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</tr>");
            i++;}             
            out.print("Total Number Of Pending Orders Are "+n);
       // session.setAttribute("iddd",rs.getString(1));
        }
        catch(Exception ex)
        {
            out.print(ex);
        }
        
       %>
<script type="text/javascript"> 
     function abc()
     {
       var x=document.getElementsByID('abcd');
        // alert(x);
         x[0].submit();
     }
     </script>
        </form>
        <%if(request.getParameter("e")!=null)
            out.print("<h2><b>Order Status Changed!!!</h2></b>");
        %>
 </center>
            </table>
        <%@ include file="footer.jsp"  %>
