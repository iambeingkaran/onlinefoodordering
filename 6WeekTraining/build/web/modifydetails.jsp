<%-- 
    Document   : modifydetails
    Created on : Jul 19, 2017, 3:59:14 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>

<%@include file="customermenuheader.jsp" %>
<td width="500" valign="middle" align="center">
        <%
         // ResultSet rs=DBlayer.DBlayer.getResult("select * from customer where email='"+session.getAttribute("id")+"' or phno='"+session.getAttribute("id")+"'");
         // if(rs.next())
         if(session.getAttribute("id")!=null)
              { out.print("<form name='form3' method='post' action='checkmodifydetails.jsp'><table border=0 width='300' height='300' ><tr><td colspan=2 align=center ><h1>Enter Your New Details</h1></td></tr><tr><td><b>Name</b></td><td><input type=text name=t1 required ></td></tr><tr><td><b>Phone No.</td><td><input type=text name=t2 required ></td></tr><tr><td><b>Email</td><td><input type=text name=t3 required ></td></tr><tr><td><b>Address</td><td><textarea name=t5  ></textarea></td></tr><tr><td><b>Security Question</td><td><input type=text name=t6  ></td></tr><tr><td><b>Security Ans</td><td><input type=text name=t7  ></td></tr><tr><td colspan=2 align=Center><input type=submit value=Update><br><br></tr></table></form>");
              }
          else
          {
              out.print("Please signin to visit this page");
              out.print("<meta http-equiv=Refresh content=1;url=welcome.jsp>");
          }
         
if(request.getParameter("qq")!=null)
out.print("<br><font color=green size=5>Error Updating Profile");
        %>
        
<%@include file="customermenufooter1.jsp" %>
        <%--        
   
        <form name=form3 method=post action="checkmodifydetails.jsp" >
<table border=0 width=300 height=300 >
    <tr>
        <td colspan=2 >Enter Your New Details</td>  
    </tr>
     <tr>
        <td>Name</td>
        <td><input type=text name=t1 required ></td>
    </tr>
     <tr>
        <td>Phone No.</td>
        <td><input type=text name=t2 required ></td>
    </tr>
     <tr>
        <td>Email</td>
        <td><input type="text" name=t3 required ></td>
    </tr>
    
    <tr>
         <td>password</td>
         <td><input type=password name=t4  ></td>
   </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="save">
               <br><br>
               <a href=index.jsp> home</a>
       </td>   
   </tr>
</table>
</form>
--%>