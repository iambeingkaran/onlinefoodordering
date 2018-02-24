<%-- 
    Document   : checkforogotpassword2
    Created on : Jul 25, 2017, 1:10:15 PM
    Author     : Waheguru21
--%>
<%@ include file="welcomeheader.jsp"  %>
<%
  String s=DBlayer.DBlayer.getScalar("select securityans from customer where email='"+request.getParameter("id")+"'");
  String t=request.getParameter("r1");
  if(s.equalsIgnoreCase(t))
  {
      out.print("<form name=form2 method=post action=checkforgotpassword3.jsp?id="+request.getParameter("id")+"><table width=300 border=0 align=center height=200><tr><td>New Password</td><td><input type=password name=t2 required ></td></tr><tr><td>Reconfirm New Password</td><td><input type=password name=t3 required ></td></tr><tr><Td colspan=2 align=center ><input type=submit value=Reset ><br><br></TD></table></form>");
  }
  else
  {out.print("Error..");
  out.print("<meta http-equiv=Refresh content=1;url=welcome.jsp>");
  }
              
%>
<%@ include file="welcomefooter.jsp"  %>