<%-- 
    Document   : cart
    Created on : Jul 24, 2017, 8:28:56 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.Date"%>
<%
    String st;
    double total=0.0;
    st=DBlayer.DBlayer.getScalar("SELECT sum(total) from cart where id='"+session.getAttribute("id")+"'");
    if(st!=null)
        total=Double.parseDouble(st);
    else
        total=0.0;
    double GST=0.18*total;
    double ftotal=total+GST;
   
     Date dNow = new Date(); // Instantiate a Date object
 int mm = dNow.getMinutes();
 dNow.setMinutes(mm+1);
    
%>
<center><h2>My Order</h2></center>
<form name="frm123" method="post" action="orderconfirm.jsp">
    <table border="0" align="center">
        <tr>
            <td>Expected Delivery Time</td>
            <td><%= dNow %></td>
        </tr>
        <tr>
            <td> Table No.-</td>
            <td> <input type="text" name="tbn" required=""></td> 
        </tr>
        <tr>
            <td>Total</td>
            <td><%= total %></td>
        </tr>
        <tr>
            <td>GST (18%)</td>
            <td><%= GST %></td>
        </tr>
        <tr>
            <td>Final Amount</td>
            <td><%= ftotal %></td>
        </tr>
        
        <tr>
      <td><input type="submit" value="Order Now"></td>
        </tr>
    </table>
</form>
