/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Mycon;
import java.sql.*;
/**
 *
 * @author Administrator
 */
public class MyConnection {
    public static Connection createCon()
    {   Connection con=null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airdata","root","password");

            }

        catch(SQLException se){
         //Handle errors for JDBC
         se.printStackTrace();
      }catch(Exception e){
         //Handle errors for Class.forName
         e.printStackTrace();
      }
        return con;
    }

}
