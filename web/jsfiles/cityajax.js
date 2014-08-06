/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var v=new XMLHttpRequest();

 function city()
         {

              var val1=document.getElementById("cityinfo").value;
             
                 v.onreadystatechange=cityfun;
                 v.open("GET","citycheck.jsp?cityname="+val1+"",true);

                  v.send();
         }
         function cityfun()
             {
                  if(v.readyState==4)
                  {

                        document.getElementById("sd").innerHTML=v.responseText;



                  }
             }

