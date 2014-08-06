/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
var v=new XMLHttpRequest();
         function my()
         {
             
              var val=document.getElementById("sacmp").value;
                 v.onreadystatechange=fun;
                 v.open("GET","check.jsp?cname="+val+"",true);

                  v.send();
         }
         function fun()
             {
                  if(v.readyState==4)
                  {

                        document.getElementById("sd").innerHTML=v.responseText;



                  }
             }

