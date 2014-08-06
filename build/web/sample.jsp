<%-- 
    Document   : sample
    Created on : 9 Jul, 2013, 12:34:38 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
 <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="s"%>

kjykjkjh
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/airdata" user="root" password="password" var="con"></s:setDataSource>
        <s:query dataSource="${con}" sql="select * from flightinfo" var="rs"></s:query>
        <c:forEach items="${rs.rows}" var="row">
            ${row.fname}
        </c:forEach>
    </body>
</html>
