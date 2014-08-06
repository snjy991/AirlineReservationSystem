/* 
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


var v=new XMLHttpRequest();
         
             function valid()
             {
                 var val=document.getElementById("selm").value;
                 v.onreadystatechange=myfun;
               
                  if(val=="1")
                  {

                   v.open("GET","check2.jsp?v="+val+"",true);

                  v.send();
                  
                 
                  }
                  if(val=="2")
                      { 
                         v.open("GET","checkdom.jsp",true);
                        v.send();

                      }
                  if(val=="0")
                      {
                          alert("please select apropriate option...." )
                      }
                 

             }
             function myfun()
             {
                  if(v.readyState==4)
                  {

                        document.getElementById("stid").innerHTML=v.responseText;
                    
                      

                  }
             }