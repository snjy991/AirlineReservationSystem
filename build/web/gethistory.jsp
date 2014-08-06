<%-- 
    Document   : gethistory
    Created on : Sep 15, 2014, 10:44:28 AM
    Author     : rad
--%>

<%@page import="Mycon.MyConnection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        int i=2;
        String uid=request.getParameter("v1");
        
        try{
       Connection con=MyConnection.createCon();
       Statement s=con.createStatement();
       ResultSet r=s.executeQuery("select * from bookinginfo where uid='"+uid+"'");
       %>
       <table border="2" align="center">
           <tr style="background-color: antiquewhite"><th>Name&nbsp;&nbsp;</th><th>age&nbsp;&nbsp;&nbsp;&nbsp;</th><th> sex&nbsp;&nbsp;</th><th> seat type</th> <th>food type&nbsp;&nbsp;&nbsp;</th> <th>ticketid</th></tr>
          <%
       while(r.next())
           {
           if(i%2==0){
%>          <tr style="background-color: aquamarine">
            <td align="center"><%=r.getString("pname")%></td>
            <td align="center"><%=r.getString("age")%>&nbsp;</td>
            <td align="center"><%=r.getString("sex")%>&nbsp;</td>
            <td align="center"><%=r.getString("seattype")%></td>
            <td align="center"><%=r.getString("foodtype")%></td>
            <td align="center"><%=r.getString("ticketid")%></td>
            </tr>

            <br>
            <%i++;}
             else{
%>          <tr style="background-color: #33CCFF">
            <td align="center"><%=r.getString("pname")%></td>
            <td align="center"><%=r.getString("age")%>&nbsp;</td>
            <td align="center"><%=r.getString("sex")%>&nbsp;</td>
            <td align="center"><%=r.getString("seattype")%></td>
            <td align="center"><%=r.getString("foodtype")%></td>
            <td align="center"><%=r.getString("ticketid")%></td>
            </tr>

            <br>
           <%i--;}
           }
            %></table><%
            }
             catch(SQLException se){
         //Handle errors for JDBC
         se.printStackTrace();
      }catch(Exception e){
         //Handle errors for Class.forName
         e.printStackTrace();
      }
        %>
    </body>
</html>
