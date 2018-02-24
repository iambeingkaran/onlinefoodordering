<%-- 
    Document   : afterorderconfirm
    Created on : Jul 28, 2017, 11:56:21 AM
    Author     : Waheguru21
--%>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>
<%@ page import="javax.activation.*" %>
<%@ page import="javax.mail.Authenticator"%>

<%@ include file="customermenuheader.jsp"  %>
<td width="300" valign="top" align="center">

<%
    String pq=DBlayer.DBlayer.getScalar("select orderid from orders where email='"+session.getAttribute("email")+"'  ORDER BY orderid DESC LIMIT 1");
    out.print("<br><h1>Congratulations Your Order Hasbeen Placed Succesfully, Your Order id is "+pq+".<br>Our representative Will Come On Your Table To Take Payments And Then Your Order Will Be Confirmed. Thankyou.</h1>");
    
/*String host = "smtp.gmail.com";
String to =(String)session.getAttribute("email");
String pass="abcxyz";
String from ="abcxyz@gmail.com";
String subject ="Order Succesfull";
String messageText ="OrderPlacedSuccesfullyOrderIdIs"+pq;
boolean sessionDebug = false;
// Create some properties and get the default Session.
Properties props = System.getProperties();
props.put("mail.host", host);
props.put("mail.transport.protocol", "smtp");
props.put("mail.smtp.starttls.enable","true"); 

Session mailSession = Session.getDefaultInstance(props, null);

mailSession.setDebug(sessionDebug);

Message msg = new MimeMessage(mailSession);
msg.setFrom(new InternetAddress(from));
InternetAddress[] address = {new InternetAddress(to)};
msg.setRecipients(Message.RecipientType.TO, address);
msg.setSubject(subject);
//msg.setSentDate(new java.util.Date());
msg.setText(messageText);

 Transport transport = mailSession.getTransport("smtp");  
        transport.connect(host, from, pass);  
 String s="";
        try   
        {  
            transport.sendMessage(msg, msg.getAllRecipients());
             s= "send";
            out.println("Email sent");     
        }  
        catch (Exception err)   
        {}  
        transport.close();  
//out.println("Mail was sent to " + to);
//out.println(" from " + from);
//out.println(" using host " + host + ".");
*/
%>

<%@ include file="customermenufooter1.jsp"  %>