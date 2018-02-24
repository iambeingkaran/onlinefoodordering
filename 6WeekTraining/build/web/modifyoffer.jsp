<%-- 
    Document   : modifyoffer
    Created on : Jul 27, 2017, 8:28:53 PM
    Author     : Waheguru21
--%>

<%@ include file="header.jsp"  %>

<td width="100" bgcolor="">

<%@page language="java" import="java.sql.*,java.util.*,java.awt.*,java.io.*;" contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <body bgcolor="">
    <center>
        <table border=1 width="100" height="50" >
            <tr bgcolor="pink">
                <th width=50 >OfferId</th>
                <th width=100 >Name</th>
                <th width=150 >Valid From</th>
                <th width=100 >Valid To</th>
                <th width=300 >Description</th>
                <th width="50" >Active</th>
                <th width="100" >Option </th>
                
            </tr>
        <%
          ResultSet rs=DBlayer.DBlayer.getResult("select * from offers order by offerid");
          while(rs.next())
              {
              if( request.getParameter("id")!=null &&  request.getParameter("id").equals(rs.getString(6)) )
                   out.print("<form name=ff method=post action=checkmodifyoffer.jsp?id="+request.getParameter("id")+" ><tr height=40 bgcolor=yellow ><td><input type=text name=id value='"+rs.getString(6)+"' disabled></td><td><input type=text name=name value='"+rs.getString(1)+"'></td><td><input type=date name=fromm value='"+rs.getString(4)+"'></td><td><input type=date name=too value='"+rs.getString(3)+"'></td><td><input type=text name=desc value='"+rs.getString(2)+"'></td><td><input type=checkbox name=t5 "+(rs.getString(5).equals("1")?" checked ":"" )+"  ></td><td align=center><input type=submit value=save > - <input type=button value=cancel onclick=\"window.location='viewalloffers.jsp'\"></td></tr></form>"); 
               else
                   out.print("<tr><td>"+rs.getString(6)+"</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td><input type=checkbox name=chk1 "+(rs.getString(5).equals("1")?" checked ":"" )+" disabled ></td><td align=center><a href=checkmodifyoffer.jsp?id="+rs.getString(6)+" >edit </a> - <a href=deleteoffer.jsp?id="+rs.getString(6)+" >delete</a></td></tr></form>");
              }
        %>
        </table>
</center>
</body>
</html>

   
<%@ include file="footer.jsp"  %>
