<%-- 
    Document   : bookingflight
    Created on : Sep 7, 2014, 2:39:59 PM
    Author     : rad
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="s"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking Ticket With Us</title>
        <script language="javascript" type="text/javascript" src="jsfiles/passengerbox.js"></script>
        <script language="javascript">
            function val()
        {
                var a=confirm("for confirmation press ok");
                if(a!=NULL)
                    {
                        alert("ok!!");
                    }
                else
                    {alert("cancel !!");}

            }
        </script>
    </head>
    <body>
        <center>
            <% int s=(Integer)session.getAttribute("userid");
            out.println("hello user id"+s);
            %>
        <h1>Welcome to seats booking Pannel</h1>
        <br><br><br><br><br>
        <form style="valign:top;" action="mybook.do">
            <input type="text" value="${param["var"]}"id="pass" style="visibility: hidden"/>
            Enter No Of Passenger<input type="text" value="0" name="trav" onblur="valid()" id="passen"/>
            
          
            <br>
            <div id="mypassid">
                <input type="text" name="t1"  value="name"/>
             <input type="text" name="t2" value="age"/>
             <select>
                 <option></option>
                 
             </select>
             Food-Preference<select>
                 <option>---select---</option>
                 <option></option>
                 
             </select>
             Select Seat Type<select>
                 <option>---select---</option>
                 <option></option>
                
             </select>
            
            contact no<input type="text" name="mobno"/>
            <br><br>
            address<input type="text"/>
            <br>
            <br>
            <input type="submit" value="book"/>
            </div>
        </form>
        </center>
    </body>
</html>
