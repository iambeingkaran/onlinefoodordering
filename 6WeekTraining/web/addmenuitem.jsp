<%-- 
    Document   : addmenuitem
    Created on : Jul 21, 2017, 8:47:51 AM
    Author     : Waheguru21
--%>
<%@ include file="header.jsp"  %>
<td width='100'>
<form name="add" method=post action="checkaddmenuitem.jsp" >
<table border=0 width=300 height=300 align='center' >
    <tr>
        <td colspan=2 align="center"><b><font size=6 color=Purple>Enter New Item</td>  
    </tr>
     <tr>
         <td><b>Item Name</b></td>
        <td><input type=text name=name required ></td>
    </tr>
         <tr>
             <td><B>Type</b></td>
        <td><select name="abc">
  <option value="Burgers">Burgers</option>
  <option value="Fries">Fries</option>
  <option value="Wraps">Wraps</option>
  <option value="Pizza">Pizza</option>
  <option value="Sides">Sides</option>
  <option value="MilkShakes">MilkShakes</option>
  <option value="Beverages">Beverages</option>
  <option value="Sweetdish">Sweetdish</option>
</select></td>  
    </tr>
    <tr>
        <td><b>Price</b></td>
        <td><input type=text name=price required ></td>
    </tr>
    <td><b>Description</b></td>
        <td><textarea name=description  ></textarea></td>
    </tr>
    <tr>
        <td> <b>Active? </b></td>
        <td> <input type="checkbox" name="check">
    </tr>
   <tr>
       <td colspan="2" align="Center">
           <input type="submit" value="Add Item">
               <br><br>
       </td>   
       
   </tr>
</table>
</form>

<%@ include file="footer.jsp"  %>