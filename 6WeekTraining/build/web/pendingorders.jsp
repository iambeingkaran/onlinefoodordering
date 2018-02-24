<%-- 
    Document   : pendingorders
    Created on : Jul 26, 2017, 4:22:23 PM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100' valign="center">

<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>


 <center>
     <h1><font size=6 color=Purple>Order Status</h1></font>
     
        <table border="1" width="700">
            <% int i=0;
                out.print("<form name=javas action=changeorderstatus.jsp  method=post '>");
                String t="";
                String a="";
                out.print("<tr bgcolor=pink ><td>OrderID</td><td>OrderData</td><td>OrderDate-Time</td><td>TotalAmount</td><td>Status</td></tr>");
        ResultSet rs,rss;
        rs=DBlayer.DBlayer.getResult("Select count(*) from orders where orderstatus='Pending' or orderstatus='PaymentPending'");
        rs.next();
        int n=rs.getInt(1);
        
        rss=DBlayer.DBlayer.getResult("select itemname from menu where menuitemid in(select menuitemid from orderdetails where orderid in(select orderid from orders where orderstatus='Pending' or orderstatus='PaymentPending' ))");
        while(rss.next()==true)
        {
         
            t=t+""+rss.getString(1)+",";
        }
      //  out.print(t); 
         
	rs=DBlayer.DBlayer.getResult("select * from orders where orderstatus='Pending' or orderstatus='PaymentPending'");
        try
        {
            while(rs.next()==true)
            { // a=rs.getString(6)=="0"?"":"checked";
              //  if(rs.getString(6).equals("1"))
           //         a="checked";
             //   else
            //        a="";
                out.print("<tr  "+(i%2==0?"bgcolor=lightblue":"")+" ><td>"+rs.getString(1)+"</td><td>"+t+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(3)+"</td><td><select name='abcd' onchange='this.form.submit()'><option value='"+rs.getString(1)+",PaymentPending'>PaymentPending</option><option value='"+rs.getString(1)+",Pending'>Pending</option><option value='"+rs.getString(1)+",Delivered'>Delivered</option></tr>");
            i++;}             
            out.print("<font size=5>Total Number Of Pending Orders Are <b>"+n);
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
