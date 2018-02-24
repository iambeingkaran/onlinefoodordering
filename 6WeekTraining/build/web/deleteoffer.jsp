<%-- 
    Document   : deleteoffer
    Created on : Jul 27, 2017, 8:24:59 PM
    Author     : Waheguru21
--%>
<% if(DBlayer.DBlayer.executeq("delete from offers where offerid="+request.getParameter("id")))
            response.sendRedirect("viewalloffers.jsp?p=2");
           
    %>