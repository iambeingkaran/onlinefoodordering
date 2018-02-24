<%-- 
    Document   : order
    Created on : Jul 23, 2017, 1:52:50 PM
    Author     : Waheguru21
--%>
<%@page language="java" import="java.sql.*"%>

<%@ include file="customermenuheader.jsp"  %>
            <script type="text/javascript">
                if(<%=request.getParameter("r")%>!=null)
                 alert("Cart Empty");
</script>
<td width="200" valign="top" align="center">
    <script language="javascript">
    function abc()
    {
        document.forms[0].submit();
    }
</script>

<h1><font color=babypink>Please Choose From Our Menu</h1></font>
<font color="red">
<form name="frm" method="post" action="order.jsp" >
    
        <input type="radio" name="r1" value='full' <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("full")?" checked ":"")  %> onclick="abc()"> FullMenu  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Burgers' <%= (request.getParameter("r1")==null || request.getParameter("r1").equals("Burgers")?" checked ":"")  %> onclick="abc()"> Burgers  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Fries' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("Fries")?" checked ":"")  %> onclick="abc()" > Fries  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Pizzas' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("Pizzas")?" checked ":"")  %>  onclick="abc()"> Pizzas<br><br>  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Wraps' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("Wraps")?" checked ":"")  %>  onclick="abc()"> Wraps  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='MilkShakes' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("MilkShakes")?" checked ":"")  %>  onclick="abc()"> MilkShakes  
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Beverages' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("Beverages")?" checked ":"")  %>  onclick="abc()"> Beverages 
      &nbsp; &nbsp;
      <input type="radio" name="r1" value='Sweetdish' <%= (request.getParameter("r1")!=null && request.getParameter("r1").equals("Sweetdish")?" checked ":"")  %>  onclick="abc()"> Sweetdish  
      &nbsp; &nbsp;
      
 <p align="center">
       <input type=text name="t1" value='<%= request.getParameter("t1")==null?"":request.getParameter("t1") %>' /> <input type="submit" value="Go" />

</p>  
</form>
<table width="700" align="center">
    <tr>
        <td>     
<table border="1" cellspacing="0" bordercolor="black" align="center">
    
            
    <tr bgcolor=lightpink >
                 <tr bgcolor=lightyellow >
    <td>Image</td>
    <td>ItemName</Td>
    <td>Type</td>
    <td>Price</td>
    <td>Description</td>
    <td>Quantity</td>
    <td>Add To Cart</td>
</tr>
<%
   String s,t;    
   ResultSet rss;
   s="select image,itemname,type,price,description,menuitemid from menu";	
   t="select image,itemname,type,price,description,menuitemid from menu where type='"+request.getParameter("r1")+"' and itemname like '%"+request.getParameter("t1")+"%'";
    if(request.getParameter("t1")==null||request.getParameter("r1")==null||request.getParameter("r1").equals("full"))
    rss=DBlayer.DBlayer.getResult(s);
    else
    rss=DBlayer.DBlayer.getResult(t);
   //  out.print(t);  
      try
        {
    
        while(rss.next())
    
            out.print("<form name=frmm method=post action=cartstore.jsp?r="+rss.getString("menuitemid")+"><tr bgcolor=lightyellow ><td><img src="+rss.getString(1)+" height=100 width=80></td><td>"+rss.getString("itemname")+"</td><td>"+rss.getString("type")+"</td><td>"+rss.getString("price")+"</td><td>"+rss.getString("description")+"</td><td><select name=abc><option  value=1>1</option><option value=2>2</option><option value=3>3</option><option value=4>4</option><option  value=5>5</option><option value=6>6</option>6</select></td><td><input type=submit value=Add></td></tr></form>");
        }
        catch(Exception z)
        { out.print("<tr><td>"+z+"</td></tr>"); }%> 

            <%
                
                if(request.getParameter("q")!=null)
                     out.print("<br><b><font color=Green ><center>Added To Cart Successfully</center></font></b>");
                else if(request.getParameter("r")!=null)
                     out.print("<br><b><font color=Green ><center>Added To Cart Successfully</center></font></b>");
              %>     
           
</tabLe>
</table>
<%@include file="customermenufooter.jsp" %>
              