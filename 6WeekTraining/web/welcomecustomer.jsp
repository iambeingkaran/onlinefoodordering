<%-- 
    Document   : welcomecustomer
    Created on : Jul 27, 2017, 9:23:05 PM
    Author     : Waheguru21
--%>

<%@ include file="customermenuheader.jsp"  %>
<td width="400" valign="middle" align="center">
<%
    if(request.getParameter("q")!=null)
    out.print("<h1><center><font color=babypink>Welcome To Food Ordering Website</h1><center>");
    else if(request.getParameter("ss")!=null)
    out.print("<h1><center>Profile Updated</h1><center>");
    else if(request.getParameter("rr")!=null)
    out.print("<h1><center>Password Change Succesfull</h1><center>");
    else 
        out.print("");
    
%>
<%@ include file="customermenufooter1.jsp"  %>