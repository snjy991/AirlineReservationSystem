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
public class uservalid extends org.apache.struts.action.ActionForm {
   private String u1;
   private String p1;

    /**
     * @return the u1
     */
    public String getU1() {
        return u1;
    }

    /**
     * @param u1 the u1 to set
     */
    public void setU1(String u1) {
        this.u1 = u1;
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
   public int validate()
    {
       int flag=0;
       try{
       Connection con=MyConnection.createCon();
       Statement s=con.createStatement();
       ResultSet r=s.executeQuery("select * from registeruser");
       while(r.next())
		{
                    if(u1.equals(r.getString(2))&& p1.equals(r.getString(3)))
                    {
                       flag=r.getInt(1);
                       break;
                    }
                }

        }

    catch(SQLException se){
         //Handle errors for JDBC
         se.printStackTrace();
      }catch(Exception e){
         //Handle errors for Class.forName
         e.printStackTrace();
      }
    return flag;
    }
   }

    

