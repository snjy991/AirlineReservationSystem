<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<link rel="stylesheet" href="css files/hompage-css-1.css"/>
<link rel="stylesheet" href="css files/menu-1.css"/>
<link rel="stylesheet" href="css files/sel1.css"/>
<script language="javascript" src="jsfiles/cal_conf2.js"></script>
 <script language="javascript" src="jsflies/cal2.js">
</script>
<script language="javascript" type="text/javascript" src="jsfiles/Ajaxscript.js"></script>
    
<script language="javascript" type="text/javascript" src="jsfiles/myajax.js">
</script>
<script language="javascript" type="text/javascript" src="jsfiles/cityajax.js">
</script>
<script type="text/javascript" src="jsfiles/slideshow.js">
</script>
<style>
    .form1 input{
        border-radius: 5px;
        border: 1px solid green;
        color: #E4E6EB;
    }
</style>

</head>

<body bgcolor="#000000">
<table width="1092" border="1" cellpadding="0" cellspacing="0" align="center" bgcolor="#FFFFFF">
  <!--DWLayoutDefaultTable-->
  <tr>
    <td valign="top" width="1088" height="66" colspan="2" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/balogo.gif" alt="homelogo" class="logo"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="" class="style1" style=" color:#33CCFF; text-decoration:none;"> Home</a>


        <form class="form1" action="prof.do" >
	<input type="text" placeholder="Login ID" name="u1" id="usr"/>
	<input type="password" placeholder="Password" name="p1"/>
	<input type="submit" value="Log in"/>
	<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a>Forgot Password</a>
	</form>
        <a href="regis.do" style="float:right">Register now |&nbsp;&nbsp;</a></td>
        
  </tr>
  <tr>
    <td height="40" valign="top" colspan="2">
	<div id="tabs3">
    <ul id="coolmenu">
                                <!-- CSS Tabs -->
<li id="current"><a href="f&h"><span>Flights and Holiday</span></a></li>
<li><a href="m&b"><span>Manage My Booking</span></a></li>
<li><a href="info"><span>Information</span></a></li>
<li><a href="About.html"><span>About us</span></a>
		
</li>

 </ul>
            <h3>${sessionScope["rss"]}</h3>
         


        
      </div>
	</td>
  </tr>
  <tr>
    <td height="500" rowspan="2" width="500" valign="top" style="color:#666666; font-family:Arial, Helvetica, sans-serif; font-size:14px; font-weight:300">
        <marquee><h3 style="margin-top:0px; color:#660066">Welcome To AirLine Reservation System</h3></marquee>

			<form name="sampleform" action="flightinfo.do">
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
                    <input type="text" name="firstinput" size=20> <a href="javascript:showCal('Calendar1')"/>Select Date</a>
                        <br /><br />
			
                        <input type="submit" value="Find flights" name="getFlights"/>
		
		</fieldset>
        </form>
      
    </td>
  </tr>
  <tr>
  <td width="1088" height="45" valign="top">

<div id="con" style="height:200px;width:200px;">
<img src="images/t2.jpg" name="slide" width="725" height="500"/>
<script>

var step=1
function slideit()
{
if (!document.images)
return
document.images.slide.src=eval("image"+step+".src")
if (step<6)
step++
else
step=1
setTimeout("slideit()",2000)
}
slideit()
</script>
<script>
function MakeVisible(element){
var element = document.getElementById(element)
element.style.display = "block"
}
function ResetAllMenus() {

var links = document.getElementsByTagName("div")

for (var j = 0; j < links.length; j++) {
if (links[j].className == 'Links')
links[j].style.display = "none"
}
}
function MakeVisible(element){
ResetAllMenus()

var element = document.getElementById(element)
element.style.display = "block"
}
</script>
</div>
  </td>
  </tr>
  <tr>
  <td width="1088" colspan="2" height="45" valign="bottom">this is footer part
      <a href="adminpannel.do">admin login</a>
  </td>
  </tr>
</table>

</body>
</html>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                