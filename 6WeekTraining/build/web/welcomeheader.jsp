<%-- 
    Document   : welcomeheader
    Created on : Jul 18, 2017, 11:58:19 AM
    Author     : Waheguru21
--%>

<%@page  language="java" import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   
    <body>
        <table cellspacing="0" width="1350" bordercolor="#000000">
            <tr bgcolor="#00CC99">
                <td width="700" height="30">
                    
                    <font color="white" size="3">
                    Welcome To Online Food Ordering Website.
                    </font>
                    
                </td>
                <td>
                 <!--   <font color='white' size='3'>
                    <a href="welcome.jsp">Contact us</a>
                    </font>
                --></td>
                <td>
                    <font color='white' size='3'>
                <a href="login.jsp">HomePage</a>
               </font>
                </td>
                <td>
                    <font color='white' size='3'>
                    <a href="adminlogin.jsp">AdminLogin</a>
                    </font>
                </td>
            </tr>
            
            
            
            
            <tr>
                <td colspan='4' height='350' bgcolor="DarkKhaki">
                    <img src="images/cust.gif" height='350' width="1350">
                </td>
            </tr>             
            
            <tr align="center"><td height='200' bgcolor='DarkKhaki'>
           <!--      <br><br><br><br>
                    <font color=Cyan size=5 ><b>Current Offers</b></font>
                <marquee direction="up" height=200 onmouseover="stop()" onmouseout="this.start()">    
                    <%
                    ResultSet rsp=DBlayer.DBlayer.getResult("select * from offers where active=1 ");
                    while(rsp.next())
                        out.print("<br><b><font color=red size=5>"+rsp.getString(1)+"</b></font><br><font size=3 color=purple>"+rsp.getString(2)+"<font><hr>");
                    %>
                </marquee> -->
                    <font color='White' align='top' size="5">
                    <h3>About us</h3>
                    We Are Providing Ease For Customers In Ordering Food Online<br>
                    Without Standing in Queue.We Promise To Provide Better Services 
                    </font>
                    <font color='white' align='top' size="5">
                    <h3>Contact us</h3>
                    You Can Contact Us On Following Social Media<br>
                    <a href="http://instagram.com/iambeingkaran    " ><img src="images/i.png" height='20' width='20'> </a> &nbsp;&nbsp;
                    <a href="http://facebok.com/iambeingkaran" ><img src="images/fb.png" height='20' width='20'> </a>&nbsp;&nbsp;
                     <a href="http://twitter.com/whoisbeingkaran"><img src="images/Twitter-icon.png" height='20' width='20'></a>&nbsp;&nbsp;
                     <br><br>
                     </font>
                     
                    
                    
                </td>
                <td colspan="3" bgcolor="DarkKhaki">