<%-- 
    Document   : reorder
    Created on : Jul 24, 2017, 11:17:31 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.Date,java.text.SimpleDateFormat;"%>

<%
    Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
    String strDate= formatter.format(date); 
    //out.print(strDate);
    
    Object p=session.getAttribute("order");
    String last=DBlayer.DBlayer.getScalar("SELECT orderitemid from orderdetails ORDER BY orderitemid DESC LIMIT 1");
//    String last2=DBlayer.DBlayer.getScalar("SELECT orderid from orders ORDER BY orderid DESC LIMIT 1");
String a="insert into orders (email,totalamount) select email,totalamount from orders where orderid ='"+p+"'";
DBlayer.DBlayer.executeq(a);
String b="insert into orderdetails(menuitemid,quantity,price,total) SELECT menuitemid,quantity,price,total from orderdetails where orderid='"+p+"'";
DBlayer.DBlayer.executeq(b);
String c="update orderdetails set orderid=( SELECT orderid from orders ORDER BY orderid DESC LIMIT 1) where orderitemid>'"+last+"'";
DBlayer.DBlayer.executeq(c);
String last2=DBlayer.DBlayer.getScalar("SELECT orderid from orders ORDER BY orderid DESC LIMIT 1");
//int last3=Integer.parseInt("last2")+1;
String aa="update orders set datetimeoforder='"+strDate+"' where orderid='"+last2+"'";
DBlayer.DBlayer.executeq(aa);
//out.println(a);out.println(b);out.println(c);out.println(aa);
String tb=request.getParameter("tb");
    DBlayer.DBlayer.executeq("update orders set tablenumber='"+tb+"' where orderid='"+last2+"'");
//;; 
response.sendRedirect("afterorderconfirm.jsp");
//response.sendRedirect("asktable.jsp");
%>