<%-- 
    Document   : deletefromcart
    Created on : Jul 28, 2017, 4:55:40 PM
    Author     : Waheguru21
--%>
<% if(DBlayer.DBlayer.executeq("delete from cart where tempid='"+request.getParameter("id")+"'"))
            response.sendRedirect("showcart.jsp?q=2");
           
    %>