<%--
    Document   : sample
    Created on : 9 Jul, 2013, 12:34:38 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script language="javascript" type="text/javascript" src="Ajaxscript.js" >
</script>
        <script language="javascript" src="cal2.js">
</script>
        <script language="javascript">
            function val()
            {
                var v=doocument.getElementById("selm").value;
                alert(v);
            }
</script>
<script language="javascript" src="cal_conf2.js"></script>
    </head>
    <body>
       <form name="sampleform" action="sample.jsp">
             <select name="sel1" onchange="valid()" id="selm">
                     <option value="0">---select----</option>
                     <option value="1">international</option>
                      <option value="2">domestic</option>
                 </select><br/><br/>
                 
        
                 <div id="sid">
                     <select name="select1" >
			<option>---select----</option>
			<option></option>
			</select>
                 </div>

			<br /><br />
                       
<input type="text" name="firstinput" size=20> <a href="javascript:showCal('Calendar1')">Select Date</a>
<input type="submit" value="Find flights" name="getFlights" onclick="val()" >

</form>
    </body>
</html>
