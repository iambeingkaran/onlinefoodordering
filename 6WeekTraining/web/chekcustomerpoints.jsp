<%-- 
    Document   : chekcustomerpoints
    Created on : Jul 28, 2017, 5:37:24 PM
    Author     : Waheguru21
--%>

<%
    String p=request.getParameter("mb");
    String q=request.getParameter("pt");
    String t=DBlayer.DBlayer.getScalar("select points from customer where phno='"+p+"'");
    int r=Integer.parseInt(t)-Integer.parseInt(q);
    if(Integer.parseInt(q)<Integer.parseInt(t))    
    { 
        DBlayer.DBlayer.executeq("update customer set points='"+r+"' where phno='"+p+"'");
        response.sendRedirect("managecustomerpoints.jsp?f=3");
    }
    else
    {
        response.sendRedirect("managecustomerpoints.jsp?ss="+t+"");
    }
    
%>
