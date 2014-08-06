<%-- 
    Document   : welcome
    Created on : Aug 17, 2013, 9:36:46 PM
    Author     : rydr
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
        <script language="javascript" type="text/javascript" src="jsfiles/Ajaxscript.js"></script>

<script language="javascript" type="text/javascript" src="jsfiles/myajax.js">
</script>
<script language="javascript" type="text/javascript" src="jsfiles/cityajax.js">
</script>
        <script language="javascript" type="text/javascript" src="jsfiles/history.js">
</script>

        <script language="javascript" src="jsfiles/cal_conf2.js"></script>
        <script language="javascript" src="jsflies/cal2.js"></script>
    </head>
    <body>
       <%out.println("heyyy"+session.getId());

       %>
       <table width="1350" height="700" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td height="20" colspan="3" valign="top"><h1 align="center" class="style1">Welcome User This is User Current Profile</h1>
        <form action="HomeSession.do">
                       <input type="submit" value="logout"/>
        </form>
    </td>

  </tr>
  <tr>
    <td width="700" height="670" valign="top" align="center"><h3>basic profile Information</h3>
        <br>
        <form>
            <%int u=(Integer)session.getAttribute("uid");
             try{
       Connection con=MyConnection.createCon();
       
       Statement s=con.createStatement();
       ResultSet r=s.executeQuery("select * from registeruser where uid='"+u+"'");
       session.setAttribute("userid",u);
       while(r.next())
           {
           %>
            Name<input type="text" value="<%=r.getString(2)%>" readonly/>
            <br><br>
            Password<input type="text" value="<%=r.getString(3)%>"readonly/>
            <br><br>
            Email<input type="text" value="<%=r.getString(4)%>"readonly/>
            <%
           }
            }
             catch(SQLException se){
         //Handle errors for JDBC
         se.printStackTrace();
      }catch(Exception e){
         //Handle errors for Class.forName
         e.printStackTrace();
      }
                       %>
           
            
           

        </form>
    </td>
    <td width="700" valign="top">
       
        <h3>To Check Your  Previous Travel Record... </h3>
        <form>
            <input type="text" value="<%=u%>" id="usrid" style="visibility: hidden"/>
        <input type="button" value="History" onclick="hi()" id="his" />
       
            <div id="myhisid">
            
            
           
            </div>
       
        </form>

    </td>
	<td width="700" valign="top">
            <form name="sampleform" action="book.do">
		 <fieldset>
		 <legend></legend>
		 From<br />
                 <select name="sel1" onchange="valid()" id="selm">
                     <option value="0">---select----</option>
                     <option value="1">international</option>
                      <option value="2">domestic</option>
                 </select><br/><br/>

                 <div id="stid">
                     <select name="sel2" >
			<option>---select----</option>
			<option></option>
			</select>
                 </div>

			<br /><br />
                        <div id="sd">
			<select name="sel3" >
			<option>---select----</option>
			<option></option>
			</select>
                        </div>
			<br /><br />
                    <input type="text" name="firstinput" size=20> <a href="javascript:showCal('Calendar1')">Select Date</a>
                        <br /><br />

                        <input type="submit" value="Find flights" name="getFlights"/>

		</fieldset>
            </form>
            
        </td>
  </tr>
</table>
    </body>
</html>
