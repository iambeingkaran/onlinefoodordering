<%-- 
    Document   : orderconfirm
    Created on : Jul 24, 2017, 8:55:06 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*,java.util.Date,java.text.SimpleDateFormat,java.net.*,java.io.*;"%>

<%
    Date date = new Date();  
    SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");  
    String strDate= formatter.format(date); 
    
    String tb="5";
   // tb=request.getParameter("tbn");
    String s,sql;
    double total=0.0;
    sql="SELECT sum(total) from cart where id='"+session.getAttribute("id")+"'";
   // out.print(sql);
    s=DBlayer.DBlayer.getScalar(sql);
    if(s==null)
        response.sendRedirect("order.jsp?r=4");
    else
    {
    total=Double.parseDouble(s);
    // total=169.25;
    double GST=0.18*total;
    double ftotal=total+GST;
   
     Date dNow = new Date( ); // Instantiate a Date object
 int mm = dNow.getMinutes();
 dNow.setMinutes(mm+15);
 java.util.Date no=new java.util.Date();
 String g="insert into orders (email,totalamount,orderstatus,datetimeoforder,tablenumber,modeofpayment) values ('"+session.getAttribute("email")+"','"+ftotal+"','PaymentPending','"+strDate+"','"+tb+"', 'cash')";
// out.print(g);
 DBlayer.DBlayer.executeq(g);
String a,b,c,d,e,f,ssql,ggql;
ResultSet rss=DBlayer.DBlayer.getResult("select * from cart where id='"+session.getAttribute("id")+"'");
String p=DBlayer.DBlayer.getScalar("SELECT orderid FROM orders ORDER BY orderid DESC LIMIT 1");
while(rss.next())
{
    a=rss.getString("menuitemid");
    b=rss.getString("quantity");
    c=rss.getString("price");
    d=rss.getString("total");
    ssql="insert into orderdetails (menuitemid,quantity,price,total,orderid) values('"+a+"','"+b+"','"+c+"','"+d+"','"+p+"')";
   // out.print(ssql);
   // out.print("<br>");
    DBlayer.DBlayer.executeq(ssql);
    ggql="delete FROM cart where id='"+session.getAttribute("id")+"' ORDER BY tempid Asc LIMIT 1";
    DBlayer.DBlayer.executeq(ggql);
    // out.print(ggql);
    // out.print("<br>");
}
/*
//String non=DBlayer.DBlayer.getScalar("select phno from customer where id='"+session.getAttribute("id")+"'");
String message="your%20order%20has%20been%20placed%20succesfully%20your%20order%20id%20"+p+"%20our%20sales%20representative%20will%20come%20on%20your%20table%20thankyou";
//message=message.replaceAll(" ","%20");
try
{
	URL url;
	HttpURLConnection connection=null;
	
	String strUrl=("http://api.mvaayoo.com/mvaayooapi/MessageCompose?user=jaswinders5626@gmail.com:123456&senderID=TEST%20SMS&receipientno="+session.getAttribute("phno")+"&msgtxt="+message+"&state=4");
	
	url=new URL(strUrl);
	connection=(HttpURLConnection)url.openConnection();
	connection.connect();
	
	DataInputStream inp=new DataInputStream(connection.getInputStream());
	//String msg=inp.readLine();
	//out.print(msg);
	connection.disconnect();
	//response.sendRedirect("Sms.jsp?send=1 & no="+no+"");
	//  out.print(strUrl);
}
	catch(Exception ex)
	{
		out.print(ex.getMessage());
	} 
*/
//

    //d=DBlayer.DBlayer.getScalar("select totalamount from orders ORDER BY orderid Desc LIMIT 1");
    //double pts=0.10*Double.parseDouble(d);
    //ggql="update customer set points='"+pts+"' where id='"+session.getAttribute("id")+"'";
    //DBlayer.DBlayer.executeq(ggql);

response.sendRedirect("afterorderconfirm.jsp");
    }
%>
