<%-- 
    Document   : checkmodifydetails
    Created on : Jul 20, 2017, 3:50:33 PM
    Author     : Waheguru21
--%>

<%@page language="java" import="java.sql.*,java.util.*,java.awt.*;" contentType="text/html" pageEncoding="UTF-8"%>
<%
   Object c=session.getAttribute("id");
 String sql="update customer set name='"+request.getParameter("t1")+"',phno='"+request.getParameter("t2")+"',email='"+request.getParameter("t3")+"',address='"+request.getParameter("t5")+"' ,securityque='"+request.getParameter("t6")+"',securityans='"+request.getParameter("t7")+"' where id='"+c.toString()+"'"; 
// out.print(sql);
    if(DBlayer.DBlayer.executeq(sql))
   {
       // out.print("Succesfully Updated");
  //          session.removeAttribute("id");
        session.removeAttribute("email");
        session.removeAttribute("name");
    //  session.setAttribute("id",request.getParameter("t"));
        session.setAttribute("email",request.getParameter("t3"));
        session.setAttribute("name",request.getParameter("t1"));
        response.sendRedirect("welcomecustomer.jsp?ss=3");
  }
    else
   { 
      out.print("<meta http-equiv=Refresh content=1;url=modifydetails.jsp>");
   }
    
%>