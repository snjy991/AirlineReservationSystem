/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

var v=new XMLHttpRequest();

             function valid()
             {var val1=document.getElementById("pass").value;
                 var val=document.getElementById("passen").value;
                 v.onreadystatechange=mypassen;
                  v.open("GET","gettextbox.jsp?v="+val+"&v1="+val1+"",true);
                  v.send();

             }
             function mypassen()
             {
                  if(v.readyState==4)
                  {

                        document.getElementById("mypassid").innerHTML=v.responseText;



                  }
             }