<%--
    Document   : check
    Created on : 9 Jul, 2013, 12:23:10 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix="s"%>
<s:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/airdata" user="root" password="password" var="con"></s:setDataSource>
        <s:query dataSource="${con}" sql="select * from country" var="rs"></s:query>




           
                <select name="sel2" onchange="my()" id="sacmp">
                    <option>---select---</option>

              <c:forEach items="${rs.rows}" var="row">

                      <option>${row.country}</option>

              </c:forEach>
                </select>


