<%-- 
    Document   : welcome
    Created on : Jul 18, 2017, 12:13:17 PM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>

<td width='100' align='center'>
<% 
    if(request.getParameter("q")!=null)
    out.print("<h1>Menu Item Added Succesfully</h1>");
    else if(request.getParameter("r")!=null)
    out.print("<h1>Welcome Admin</h1>");
    else if(request.getParameter("s")!=null)
    out.print("<h1>Photo Uploaded Successfully</h1>");
    else if(request.getParameter("qs")!=null)
    out.print("<h1>Offer Added Successfully</h1>");
%>


<%@ include file="footer.jsp"  %>
<!--<a href="addmenuitem.jsp">ADD New Menu Item</a><br>
<a href="additemphoto.jsp">Add Menu Ki Foto</a><br>
<a href="cart.jsp">Cart</a><br>
<a href="forgotpassword.jsp">Forgot Password</a><br>
<a href="editmenuitem.jsp">edit menu duja</a><br>
<a href="fullmenu.jsp">FullMenu</a><br>
<a href="modifydetails.jsp">ModifyDetails</a><br>
<a href="modifymenuitem.jsp">Modifymenuitem</a><br>
<a href="order.jsp">order karo</a><br>
<a href="resetpassword.jsp">reset</a><br>
<a href="signup.jsp"></a>signup<br>
<a href="viewaddeditems.jsp">added itemaa</a><br>
<a href="viewcustomerorder.jsp">view customer de order</a><br>
<a href=""></a><br>
<a href=""></a><br>
-->

