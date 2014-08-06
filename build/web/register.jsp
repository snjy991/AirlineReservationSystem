<%-- 
    Document   : register
    Created on : Aug 17, 2013, 8:58:41 PM
    Author     : rydr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html:html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Airline Registration System</title>
        <style>
            .er{
                color: deeppink;
            }
        </style>
    </head>
    <body>
       <table  border="1" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="1384" height="90" valign="top" colspan="2" >&nbsp;
      
      <h1 align="center">Welcome To Indian Airways Registration Page</h1></td>
  </tr>
  <tr valign="top">
  <td>
      <html:form action="noida.do" method="post">
          
  <fieldset>
  <legend>Registration Form</legend>
  <br/><br/>
  Name<html:text property="n1"/><span class="er"><html:errors property="name"/></span>
  <br /><br/><br/>
  Password<html:password property="p1"/><span class="er"><html:errors property="passwd"/></span>
  <br /><br/><br/>
  Retype Password<html:password property="p2"/><span class="er"><html:errors property="passwd2"/></span>
  <br/><br/><br/>
  Email<html:text property="e1"/><span class="er"><html:errors property="email"/></span>
  <br/><br/><br/>
  <input type="submit" value="sign up"/>
  <input type="reset" value="clear"/>


  </fieldset>
  </html:form>

  </td>

  <td height="900" width="900">
  </td>
  </tr>


  <tr>
  <td colspan="2">footer
  </td>
  </tr>
</table>
    </body>
</html:html>
