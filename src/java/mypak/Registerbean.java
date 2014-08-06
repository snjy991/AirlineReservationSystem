/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypak;

import Mycon.MyConnection;
import java.sql.*;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author rydr
 */
public class Registerbean extends org.apache.struts.action.ActionForm {
    
   private String n1;
   private String p1;
   private String e1;
   private String p2;
    /**
     * @return the n1
     */
    public String getN1() {
        return n1;
    }

    /**
     * @param n1 the n1 to set
     */
    public void setN1(String n1) {
        this.n1 = n1;
    }

    /**
     * @return the p1
     */
    public String getP1() {
        return p1;
    }

    /**
     * @param p1 the p1 to set
     */
    public void setP1(String p1) {
        this.p1 = p1;
    }

    /**
     * @return the e1
     */
    public String getE1() {
        return e1;
    }

    /**
     * @param e1 the e1 to set
     */
    public void setE1(String e1) {
        this.e1 = e1;
    }
    public int insertdata()
    { int flag=0;
      int n = 0;
            try
            {
            Connection con=MyConnection.createCon();
            Statement s=con.createStatement();
            n=s.executeUpdate( "insert into registeruser(name,password,email)values('"+n1+"','"+p1+"','"+e1+"')");
            }
            catch(SQLException se){
         //Handle errors for JDBC
            se.printStackTrace();
            }catch(Exception e){
            //Handle errors for Class.forName
              e.printStackTrace();
            }
             if(n>0)
             {
             flag=1;
             }
      return flag;

    }

    /**
     * @return the p2
     */
    public String getP2() {
        return p2;
    }

    /**
     * @param p2 the p2 to set
     */
    public void setP2(String p2) {
        this.p2 = p2;
    }
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();

        if (n1 == null || n1.length() < 1) {
            errors.add("name", new ActionMessage("errors.register.name.required"));
        }
        if (p1 == null || p1.length() < 1) {
            errors.add("passwd", new ActionMessage("errors.register.passwd.required"));
        }
        if (e1 == null || e1.length() < 1) {
            errors.add("email", new ActionMessage("errors.register.email.required"));
        }
     

        if(errors.size()==0){
            
            if (p1.length() < 6) {
                errors.add("passwd", new ActionMessage("errors.register.passwd.invalid"));
            }
            if (!p1.equals(p2)) {
                errors.add("passwd2", new ActionMessage("errors.register.passwd.match"));
            }
            
        }

        return errors;
    }
 
}
