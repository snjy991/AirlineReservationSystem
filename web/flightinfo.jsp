<%-- 
    Document   : flightinfo
    Created on : 17 Aug, 2013, 9:10:49 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="s"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript">
            function show()
            {
                alert("you have to login first");
            }
        </script>
    </head>
    <body>
       
       <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/airdata" user="root" password="password" var="con"></s:setDataSource>
        <s:query dataSource="${con}" sql="select * from flightinfo where date='${param['firstinput']}' and cid=(select cid from countryinfo where scountry='${param['sel2']}' and dcountry='${param['sel3']}')" var="rs"></s:query>
         <s:query dataSource="${con}" sql="select * from cityfinfo where date='${param['firstinput']}' and sid=(select sid from stateinfo where sstate='${param['sel4']}' and dstate='${param['sel5']}')" var="rs1"></s:query>
        <center><table border="2">
                <h1>TICKET AVALIABILITY........</h1>
            <th>Flight Name</th><th>Arival Time</th><th>Departure Time</th><th>Avaliable Seats</th>
        <c:forEach items="${rs.rows}" var="row">
            <tr>
                <td>${row.fname}</td>
                <td>${row.atime}</td>
                <td>${row.dtime}</td>
                <td>${row.seats}</td>
                <td><a href="javascript:show()">Book</a></td>
           </tr>

            <br><br>
        </c:forEach>
            <c:forEach items="${rs1.rows}" var="ro">
            <tr>
                <td>${ro.fname}</td>
                <td>${ro.atime}</td>
                <td>${ro.dtime}</td>
                <td>${ro.seats}</td>
                <td><a href="javascript:show()">Book</a></td>
            </tr>

            <br><br>
        </c:forEach>
        </table>
        </center>
    </body>
</html>
