<%-- 
    Document   : gettextbox
    Created on : Sep 7, 2014, 5:04:19 PM
    Author     : rad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="mybook.do">
         <fieldset>
             <legend>Enter Passenger Details</legend>
         <%
         int sp=(Integer)session.getAttribute("userid");
         %>
         <input type="text" value="<%=sp%>" name="userid" hidden>
         <%
         String a=request.getParameter("v");
         int n=Integer.parseInt(a);

         if(n<=5){
         for(int i=1;i<=n;i++)
           
         {%>
        <%
        String ma=request.getParameter("v");
        String fid=request.getParameter("v1");
        %>
        <input type="text" name="flightid" value="<%=fid%>" style="visibility: hidden"/>
        <input type="text" name="pno" value="<%=ma%>"style="visibility: hidden" />
         <input type="text" name="pass<%=i%>" value="name"/>
             <input type="text" name="age<%=i%>" value="age"/>
             <select name="sextype<%=i%>">
                 <option>male</option>
                 <option>Female</option>
             </select>
             Food-Preference<select name="ftype<%=i%>">
                 <option>---select---</option>
                 <option>Veg</option>
                 <option>Non-Veg</option>
             </select>
             Select Seat Type<select name="stype<%=i%>">
                 <option>---select---</option>
                 <option>Business Class</option>
                 <option>Economoy Class</option>
             </select>
         
             <br><br>
             <%}}
         else
{
%>
<h1>Only Book Five Ticket At a Time For Preventing Bulk Ticketing .....</h1>
<%}%>
contact no<input type="text" name="mobno"/>
            <br><br>
            address<input type="text"/>
            <br>
            <br>
            <input type="submit" value="book"/>
<input type="reset" value="clear"/>
<br><br>
         </fieldset>
         </form>
    </body>
</html>
