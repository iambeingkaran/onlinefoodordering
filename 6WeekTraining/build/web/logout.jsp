<%
session.removeAttribute("id");
session.removeAttribute("name");
session.removeAttribute("email");
out.print("You Have Been Logged Out Succesfully You Will Be Taken To HomePage In 3 Seconds");
//response.sendRedirect("login.jsp");
%>

<meta http-equiv="Refresh" content="3;url=login.jsp">