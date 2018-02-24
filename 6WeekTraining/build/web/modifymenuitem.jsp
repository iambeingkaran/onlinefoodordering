<%-- 
    Document   : modifymenuitem
    Created on : Jul 21, 2017, 7:12:01 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.*" contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="header.jsp"  %>
<td width='100' valign="center">

<body bgcolor="">
        
        <%
                String t=request.getParameter("id");
                ResultSet rs;
                rs=DBlayer.DBlayer.getResult("select * from menu where menuitemid="+request.getParameter("id"));
                try
                {
                    rs.next();
                }
                catch(Exception ex)
                {
                    
                }        
                    %>
<form name=frm method=post action="checkmodifymenuitem.jsp?id=<% out.print(rs.getString(1)); %>" >
    
<table border=0 width=300 height=300 >
    <tr>
        <td colspan=2 align="center">Enter New Details</td>  
    </tr>
    <tr>
        <td>ItemID</td>
        <td><input type=text name=t5 value='<% out.print(rs.getString(1)); %>' readonly ></td>
    </tr>
     <tr>
        <td>Item Name</td>
        <td><input type=text name=t1 value='<% out.print(rs.getString(2)); %>' ></td>
    </tr>
         <tr>
        <td>Type</td>
        <td><select name="abc">
  <option value="Burgers" <% if(rs.getString(3).equals("Burgers"))out.print("Selected"); %> >Burgers</option>
  <option value="Fries" <% if(rs.getString(3).equals("Fries"))out.print("Selected"); %> >Fries</option>
  <option value="Wraps"<% if(rs.getString(3).equals("Wraps"))out.print("Selected"); %>  > Wraps</option>
  <option value="Pizza" <% if(rs.getString(3).equals("Pizza"))out.print("Selected"); %>> Pizza</option>
  <option value="Sides" <% if(rs.getString(3).equals("Sides"))out.print("Selected"); %>> Sides</option>
  <option value="MilkShakes" <% if(rs.getString(3).equals("MilkShakes"))out.print("Selected"); %>  >MilkShakes</option>
  <option value="Beverages" <% if(rs.getString(3).equals("Beverages"))out.print("Selected"); %> >Beverages</option>
  <option value="Sweetdish" <% if(rs.getString(3).equals("Sweetdish"))out.print("Selected"); %> >Sweetdish</option>
</select></td>  
    </tr>
    <tr>
        <td>Price</td>
        <td><input type=text name=t3 value='<% out.print(rs.getString(4));%>' ></td>
    </tr>
        <td>Description</td>
        <td><input type="text" name=t4  value='<% out.print(rs.getString(5)); %>'></td>
    </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Update">
               <br><br>
       </td>   
       
   </tr>
</table>
</form>
    
    <%@ include file="footer.jsp"  %>