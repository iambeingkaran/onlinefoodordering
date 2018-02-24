<%-- 
    Document   : checkmodifyoffer
    Created on : Jul 27, 2017, 8:38:19 PM
    Author     : Waheguru21
--%>

<%
            String m=request.getParameter("name");
            String a=request.getParameter("too");
            String b=request.getParameter("fromm");
            String c=request.getParameter("desc");
            String d=request.getParameter("t5");
            String e="1";
            if(request.getParameter("t5")==null)
                e="0";
            String sql="update offers set oname='"+m+"' , oto='"+a+"' , ofrom='"+b+"' , description='"+c+"' ,active="+e+" where offerid="+request.getParameter("id");
           // out.print(sql);
            if(DBlayer.DBlayer.executeq(sql))
            response.sendRedirect("viewalloffers.jsp?q=2");
           else
            response.sendRedirect("errorpage.jsp");
             
             %>