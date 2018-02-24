<%-- 
    Document   : resetpassword
    Created on : Jul 19, 2017, 1:47:21 PM
    Author     : Waheguru21
--%>

<%@include file="customermenuheader.jsp" %>
<td width="500" valign="middle" align="center">

<form name="form2" method="post" action="checkresetpassword.jsp">            
                    <table width=300 border=0 align="center" height=200  >
                        <tr><td colspan="2" align="center"><h1>Reset Password</h1></td></tr>
                        <tr>
                            <td><b>Current Password</td>
                            <td><input type=password name=t1 required ></td>
                        </tr>
                        <tr>
                            <td><b>New Password</td>
                            <td><input type=password name=t2 required ></td>
                        </tr>
                        <tr>
                            <td><b>Reconfirm New Password</td>
                            <td><input type=password name=t3 required ></td>
                        </tr>
                        <%
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red>Password Fields Doesnot Match</font></td></tr>");
                          
                          else if(request.getParameter("q")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red>Incorrect Previous Password</font></td></tr>");
                          else if(request.getParameter("r")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red>Password Changed Succesfully</font></td></tr>");
                        
                        %>
                        <tr>
                        <Td colspan="2" align=center >
                            <input type="submit" value="Reset" ><br><br>
                        </TD>
                    </table>
                </form>

<%@include file="customermenufooter1.jsp" %>