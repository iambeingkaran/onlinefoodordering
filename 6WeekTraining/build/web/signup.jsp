<%-- 
    Document   : signup
    Created on : Jul 19, 2017, 4:19:07 PM
    Author     : Waheguru21
--%>
<%@ include file="welcomeheader.jsp"  %>  

<form name=frm method=post action="checksignup.jsp" >
<table border=0 width=300 height=300 >
    <tr>
        <td colspan=2 align="center">Enter Your Details</td>  
    </tr>
     <tr>
        <td>Name</td>
        <td><input type=text name=name required ></td>
    </tr>
         <tr>
        <td>Gender</td>
        <td><input type=radio name=r1 value="Male" >Male &nbsp; &nbsp;<input type=radio name=r1 value="Female">Female</td>  
    </tr>
    <tr>
        <td>Email</td>
        <td><input type=text name=email required ></td>
    </tr>
    
     <tr>
        <td>Phone no</td>
        <td><input type="text" name=phno required></td>
    </tr>
    <tr>
         <td>Password</td>
         <td><input type=password name=pwd  ></td>
   </tr>
   
    <tr>
        <td>Security Question</td>
        <td><input type=text name=sq required ></td>
    </tr>
    <tr>
        <td>Answer</td>
        <td><textarea name=sa required ></textarea></td>
    </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Signup">
               <br><br>
       </td>   
   </tr>
</table>
</form>
<%@ include file="welcomefooter.jsp"  %> 
