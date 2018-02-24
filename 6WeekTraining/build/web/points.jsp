<%-- 
    Document   : points
    Created on : Jul 28, 2017, 5:16:49 PM
    Author     : Waheguru21
--%>

<%@include file="customermenuheader.jsp" %>
<td width="500" valign="middle" align="center">
    <% String t=DBlayer.DBlayer.getScalar("select points from customer where id='"+session.getAttribute("id")+"'");
        out.print("<h2>Your Points Are <font color=red >"+t+"</font>. Show This Message To Our Sales Representative To Utilize The Points");
    
    
    
    %>   
    
    
<%@include file="customermenufooter1.jsp" %>