/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var v=new XMLHttpRequest();

             function hi()
             {
                 var val1=document.getElementById("usrid").value;
                 v.onreadystatechange=myhis;
                  v.open("GET","gethistory.jsp?v1="+val1+"",true);
                  v.send();

                 
             }
             function myhis()
             {
                  if(v.readyState==4)
                  {

                        document.getElementById("myhisid").innerHTML=v.responseText;



                  }
             }