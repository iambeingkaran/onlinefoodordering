<%-- 
    Document   : login
    Created on : Jul 18, 2017, 11:58:19 AM
    Author     : Waheguru21
--%>
<%@ include file="welcomeheader.jsp"  %>  
<form name="form1" method="post" action="checklogin.jsp">            
                    <table width=250 border=0 align="center" height=200  >
                        <tr><td colspan="2" align="center">LOGIN</td></tr>
                        <tr>
                            <td>Email/Ph.No</td>
                            <td><input type=text name=t1 required ></td>
                        </tr>
                        <tr>
                            <td>Password</td>
                            <td><input type=password name=t2 required ></td>
                        </tr>
                        <%
                          if(request.getParameter("p")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red> Invalid Email Or Password</font></td></tr>");
                        else if(request.getParameter("r")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red> Password Changed Succesfully</font></td></tr>");
                         else if(request.getParameter("q")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red> SignedUp Succesfully</font></td></tr>"); 
                        else if(request.getParameter("ses")!=null)
                              out.print("<tr><td colspan=2 align=center><font color=red><b>Session Expired</b></font></td></tr>"); 

                        %>
                        <tr>
                        <Td colspan="2" align=center >
                            <input type="submit" value="Login" ><br><br>
                            <a href='signup.jsp'>New Customer?</a><br><br>    
                            <a href='forgotpassword.jsp'>Forgot Password</a>
                        </TD>
                        
                    </table>
                </form>
                        <%@ include file="welcomefooter.jsp"  %>  