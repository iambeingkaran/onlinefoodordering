<%-- 
    Document   : addnewoffer
    Created on : Jul 27, 2017, 8:01:18 PM
    Author     : Waheguru21
--%>

<%@ include file="header.jsp"  %>
<td width='100'>
<form name="add" method=post action="checkaddnewoffer.jsp" >
<table border=0 width=300 height=300 align='center' >
    <tr>
        <td colspan=2 align="center"><B><font size=6 color=Purple>Enter New Offer</td>  
    </tr>
     <tr>
        <td><b>Offer Name</td>
        <td><input type=text name=name required ></td>
    </tr>
    
     <tr>
         <td><b>Valid From</b></td>
        <td><input type=date name=from required ></td>
    </tr>
    <tr>
        <td><b>Valid Till</b></td>
        <td><input type=date name=to required ></td>
    </tr>
    <td><b>Description</b></td>
        <td><textarea name=description  ></textarea></td>
    </tr>
    <tr>
        <td> <b>Active?</b> </td>
        <td> <input type="checkbox" name="check">
    </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Add Offer">
               <br><br>
       </td>   
       
   </tr>
</table>
</form>

<%@ include file="footer.jsp"  %>