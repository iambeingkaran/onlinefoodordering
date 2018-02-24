<%-- 
    Document   : test2
    Created on : Jul 24, 2017, 9:49:19 AM
    Author     : Waheguru21
--%>

<%@ include file="header.jsp"  %>

<td width="100" bgcolor="">

<%@page language="java" import="java.sql.*,java.util.*,java.awt.*,java.io.*;" contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <body bgcolor="">
    <center>
        <table border=1 width="50" >
            <tr bgcolor="pink">
                <th width=50 >MenuItemId</th>
                <th width=100 >Name</th>
                <th width=150 >Type</th>
                <th width=50 >Price</th>
                <th width=300 >Description</th>
                <th width="50" >Active</th>
                <th width="100" >Option </th>
                
            </tr>
        <%
          ResultSet rs=DBlayer.DBlayer.getResult("select * from menu order by menuitemid");
          while(rs.next())
              {
              if( request.getParameter("id")!=null &&  request.getParameter("id").equals(rs.getString(1)) )
                   out.print("<form name=ff method=post action=checkmodifymenuitem.jsp?id="+request.getParameter("id")+" ><tr height=40 bgcolor=yellow ><td><input type=text name=t0 value='"+rs.getString(1)+"' disabled></td><td><input type=text name=t1 value='"+rs.getString(2)+"'></td><td><select name=abc><option value=Burgers"+(rs.getString(3).equals("Burgers")?" selected ":"" )+">Burgers</option><option value=Fries"+(rs.getString(3).equals("Fries")?" selected ":"" )+" >Fries</option><option value=Wraps"+(rs.getString(3).equals("Wraps")?" selected ":"" )+" >Wraps</option><option value=Pizza"+(rs.getString(3).equals("Pizza")?" selected ":"" )+">Pizza</option><option value=Sides"+(rs.getString(3).equals("Sides")?" selected ":"" )+">Sides</option><option value=Milkshakes"+(rs.getString(3).equals("MilkShakes")?" selected ":"" )+">MilkShakes</option><option value=Beverages"+(rs.getString(3).equals("Beverages")?" selected ":"" )+">Beverages</option><option value=Sweetdish"+(rs.getString(3).equals("Sweetdish")?" selected ":"" )+">Sweetdish</option></select></td><td><input type=text name=t3 value='"+rs.getString(4)+"'></td><td><input type=text name=t4 value='"+rs.getString(5)+"'></td><td><input type=checkbox name=t5 "+(rs.getString(6).equals("1")?" checked ":"" )+"  ></td><td align=center><input type=submit value=save > - <input type=button value=cancel onclick=\"window.location='viewaddeditems.jsp'\"></td></tr></form>"); 
               else
                   out.print("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td><input type=checkbox name=chk1 "+(rs.getString(6).equals("1")?" checked ":"" )+" disabled ></td><td align=center><a href=test2.jsp?id="+rs.getString(1)+" >edit </a> - <a href=deletemenuitem.jsp?id="+rs.getString(1)+" >delete</a></td></tr>");
              }
        %>
        </table>
</center>
</body>
</html>

   
<%@ include file="footer.jsp"  %>
    