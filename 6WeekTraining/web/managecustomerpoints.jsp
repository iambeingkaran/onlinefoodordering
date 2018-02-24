<%-- 
    Document   : managecustomerpoints
    Created on : Jul 28, 2017, 5:35:19 PM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100'>
    <form name="add" method=post action="chekcustomerpoints.jsp" >
<table border=0 width=300 height=300 align='center' >
    <tr>
        <td colspan=2 align="center"><h1><font size=6 color=Purple><b>Manage points</h1></td></b></font>  
    </tr>
     <tr>
        <td><b>Enter Mobile No. Of Customer</td>
        <td><input type=text name=mb required ></td>
    </tr>
    <tr>
        <td><b>Enter Points To Be Deducted</td>
        <td><input type=text name=pt required ></td>
    </tr>
    
       <td colspan="2" align="Center">
           <input type="submit" value="Submit">
               <br><br>
       </td>   
       
   </tr>
   <tr><td width="100">
       <%//if(request.getParameter("f")!=null)
        //out.print("<b><font size=5 color=red>Points updated");
    //else 
    if(request.getParameter("ss")!=null)
     out.print("<b><font color=gray>Customer Do Not Have Sufficient Points</font>, Total Points <b><font color=red size=4> ="+request.getParameter("ss"));%>
       
       
       </td>    
   </tr>
</table>
        <script type="text/javascript">
                if(<%=request.getParameter("f")%>!=null)
                 alert("Points updated");
                // else if(<%=request.getParameter("ss")%>!=null)
                 //{
                   //  alert("Customer Doesnot Have SufficientPoints,Total Points="+s);
                     
                 //}
</script>
</form>
    
    
<%@ include file="footer.jsp"  %>