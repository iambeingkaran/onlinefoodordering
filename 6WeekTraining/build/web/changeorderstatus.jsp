<%-- 
    Document   : changeorderstatus
    Created on : Jul 26, 2017, 10:09:41 PM
    Author     : Waheguru21
--%>

<%
    String d,ggql,e;
    String p=request.getParameter("abcd");
   String a[]=p.split(",");
   String s=DBlayer.DBlayer.getScalar("select email from orders where orderid='"+a[0]+"'");
 //  out.print("update orders set orderstatus='"+a[1]+"'where orderid='"+a[0]+"'");
    if(DBlayer.DBlayer.executeq("update orders set orderstatus='"+a[1]+"' where orderid='"+a[0]+"'"))
    {
        if(a[1].equals("Pending") || a[1].equals("Delivered"))
        {     d=DBlayer.DBlayer.getScalar("select totalamount from orders where orderid='"+a[0]+"'");
    double pts=0.10*Double.parseDouble(d);
    e=DBlayer.DBlayer.getScalar("select points from customer where email='"+s+"'");
    double n=Double.parseDouble(e)+pts;
    ggql="update customer set points='"+n+"' where email='"+s+"'";
    DBlayer.DBlayer.executeq(ggql);
        
        response.sendRedirect("pendingorders.jsp?e=2");
        }
    }
    else
        response.sendRedirect("errorpage.jsp");
%>
