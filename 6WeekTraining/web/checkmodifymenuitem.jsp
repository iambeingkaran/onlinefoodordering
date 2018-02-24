<%-- 
    Document   : checkmodifymenuitem
    Created on : Jul 21, 2017, 7:17:26 PM
    Author     : Waheguru21
--%>

<%
            String m=request.getParameter("t0");
            String a=request.getParameter("t1");
            String b=request.getParameter("abc");
            String c=request.getParameter("t3");
            String d=request.getParameter("t4");
            String e="1";
            if(request.getParameter("t5")==null)
                e="0";
            String sql="update menu set itemname='"+a+"' , type='"+b+"' , price='"+c+"' , description='"+d+"' ,active="+e+" where menuitemid="+request.getParameter("id");
          //  out.print(sql);
            if(DBlayer.DBlayer.executeq(sql))
            response.sendRedirect("viewaddeditems.jsp?q=2");
           else
            response.sendRedirect("welcome.jsp");
             
             %>
