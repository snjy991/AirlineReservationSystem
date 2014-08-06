/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypak;

import java.sql.*;
import Mycon.MyConnection;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.tiles.taglib.GetAttributeTag;

/**
 *
 * @author rad
 */
public class bookingbean extends org.apache.struts.action.ActionForm {
    

    private Integer userid;
    private String pass1;
    private String age1;
    private String sextype1;
    private String ftype1;
    private String stype1;

    private String pass2;
    private String age2;
    private String sextype2;
    private String ftype2;
    private String stype2;

    private String pass3;
    private String age3;
    private String sextype3;
    private String ftype3;
    private String stype3;

    private String pass4;
    private String age4;
    private String sextype4;
    private String ftype4;
    private String stype4;

    private String pass5;
    private String age5;
    private String sextype5;
    private String ftype5;
    private String stype5;

    private String mobno;
    /**
     * @return the pass1
     */
    public String getPass1() {
        return pass1;
    }

    /**
     * @param pass1 the pass1 to set
     */
    public void setPass1(String pass1) {
        this.pass1 = pass1;
    }

    /**
     * @return the age1
     */
    public String getAge1() {
        return age1;
    }

    /**
     * @param age1 the age1 to set
     */
    public void setAge1(String age1) {
        this.age1 = age1;
    }

    /**
     * @return the sextype1
     */
    public String getSextype1() {
        return sextype1;
    }

    /**
     * @param sextype1 the sextype1 to set
     */
    public void setSextype1(String sextype1) {
        this.sextype1 = sextype1;
    }

    /**
     * @return the ftype1
     */
    public String getFtype1() {
        return ftype1;
    }

    /**
     * @param ftype1 the ftype1 to set
     */
    public void setFtype1(String ftype1) {
        this.ftype1 = ftype1;
    }

    /**
     * @return the stype1
     */
    public String getStype1() {
        return stype1;
    }

    /**
     * @param stype1 the stype1 to set
     */
    public void setStype1(String stype1) {
        this.stype1 = stype1;
    }

    /**
     * @return the pass2
     */
    public String getPass2() {
        return pass2;
    }

    /**
     * @param pass2 the pass2 to set
     */
    public void setPass2(String pass2) {
        this.pass2 = pass2;
    }

    /**
     * @return the age2
     */
    public String getAge2() {
        return age2;
    }

    /**
     * @param age2 the age2 to set
     */
    public void setAge2(String age2) {
        this.age2 = age2;
    }

    /**
     * @return the sextype2
     */
    public String getSextype2() {
        return sextype2;
    }

    /**
     * @param sextype2 the sextype2 to set
     */
    public void setSextype2(String sextype2) {
        this.sextype2 = sextype2;
    }

    /**
     * @return the ftype2
     */
    public String getFtype2() {
        return ftype2;
    }

    /**
     * @param ftype2 the ftype2 to set
     */
    public void setFtype2(String ftype2) {
        this.ftype2 = ftype2;
    }

    /**
     * @return the stype2
     */
    public String getStype2() {
        return stype2;
    }

    /**
     * @param stype2 the stype2 to set
     */
    public void setStype2(String stype2) {
        this.stype2 = stype2;
    }

    /**
     * @return the pass3
     */
    public String getPass3() {
        return pass3;
    }

    /**
     * @param pass3 the pass3 to set
     */
    public void setPass3(String pass3) {
        this.pass3 = pass3;
    }

    /**
     * @return the age3
     */
    public String getAge3() {
        return age3;
    }

    /**
     * @param age3 the age3 to set
     */
    public void setAge3(String age3) {
        this.age3 = age3;
    }

    /**
     * @return the sextype3
     */
    public String getSextype3() {
        return sextype3;
    }

    /**
     * @param sextype3 the sextype3 to set
     */
    public void setSextype3(String sextype3) {
        this.sextype3 = sextype3;
    }

    /**
     * @return the ftype3
     */
    public String getFtype3() {
        return ftype3;
    }

    /**
     * @param ftype3 the ftype3 to set
     */
    public void setFtype3(String ftype3) {
        this.ftype3 = ftype3;
    }

    /**
     * @return the stype3
     */
    public String getStype3() {
        return stype3;
    }

    /**
     * @param stype3 the stype3 to set
     */
    public void setStype3(String stype3) {
        this.stype3 = stype3;
    }

    /**
     * @return the pass4
     */
    public String getPass4() {
        return pass4;
    }

    /**
     * @param pass4 the pass4 to set
     */
    public void setPass4(String pass4) {
        this.pass4 = pass4;
    }

    /**
     * @return the age4
     */
    public String getAge4() {
        return age4;
    }

    /**
     * @param age4 the age4 to set
     */
    public void setAge4(String age4) {
        this.age4 = age4;
    }

    /**
     * @return the sextype4
     */
    public String getSextype4() {
        return sextype4;
    }

    /**
     * @param sextype4 the sextype4 to set
     */
    public void setSextype4(String sextype4) {
        this.sextype4 = sextype4;
    }

    /**
     * @return the ftype4
     */
    public String getFtype4() {
        return ftype4;
    }

    /**
     * @param ftype4 the ftype4 to set
     */
    public void setFtype4(String ftype4) {
        this.ftype4 = ftype4;
    }

    /**
     * @return the stype4
     */
    public String getStype4() {
        return stype4;
    }

    /**
     * @param stype4 the stype4 to set
     */
    public void setStype4(String stype4) {
        this.stype4 = stype4;
    }

    /**
     * @return the pass5
     */
    public String getPass5() {
        return pass5;
    }

    /**
     * @param pass5 the pass5 to set
     */
    public void setPass5(String pass5) {
        this.pass5 = pass5;
    }

    /**
     * @return the age5
     */
    public String getAge5() {
        return age5;
    }

    /**
     * @param age5 the age5 to set
     */
    public void setAge5(String age5) {
        this.age5 = age5;
    }

    /**
     * @return the sextype5
     */
    public String getSextype5() {
        return sextype5;
    }

    /**
     * @param sextype5 the sextype5 to set
     */
    public void setSextype5(String sextype5) {
        this.sextype5 = sextype5;
    }

    /**
     * @return the ftype5
     */
    public String getFtype5() {
        return ftype5;
    }

    /**
     * @param ftype5 the ftype5 to set
     */
    public void setFtype5(String ftype5) {
        this.ftype5 = ftype5;
    }

    /**
     * @return the stype5
     */
    public String getStype5() {
        return stype5;
    }

    /**
     * @param stype5 the stype5 to set
     */
    public void setStype5(String stype5) {
        this.stype5 = stype5;
    }

    /**
     * @return the mobno
     */
    public String getMobno() {
        return mobno;
    }

    /**
     * @param mobno the mobno to set
     */
    public void setMobno(String mobno) {
        this.mobno = mobno;
    }

public int insertdata()
    { int flag=0;
      int n1 = 0,n2=0,n3=0,n4=0,n5 = 0,x;
            try
            {
            System.out.println("sanjayyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
            Connection con=MyConnection.createCon();
            Statement s=con.createStatement();
            if(!pass1.isEmpty() && !age1.isEmpty() && !sextype1.isEmpty() && !stype1.isEmpty() && !ftype1.isEmpty() &&stype1.equalsIgnoreCase("Business Class"))
            {    
                x=(int) (Math.random() * 10000000);
                String tid=pass1+x;
                n1=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass1+"','"+age1+"','"+sextype1+"','"+stype1+"','"+ftype1+"','"+1+"','"+tid+"')");
            System.out.println("sanjayyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
            }
                else{
                x=(int) (Math.random() * 10000000);
                String tid=pass1+x;
                n1=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass1+"','"+age1+"','"+sextype1+"','"+stype1+"','"+ftype1+"','"+2+"','"+tid+"')");
                System.out.println("sanjayyyyyyyyyyyyyyyyyyyyyyyyyyyyyy");
                }
            if(!pass2.isEmpty() && !age2.isEmpty() && !sextype2.isEmpty() && !stype2.isEmpty() && !ftype2.isEmpty()&& stype2.equals("Business Class"))
            {  x=(int) (Math.random() * 10000000);
                String tid=pass2+x;
                n2=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass2+"','"+age2+"','"+sextype2+"','"+stype2+"','"+ftype2+"','"+1+"','"+tid+"')");
                }
                else{
                x=(int) (Math.random() * 10000000);
                String tid=pass2+x;
                    n2=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass2+"','"+age2+"','"+sextype2+"','"+stype2+"','"+ftype2+"','"+2+"','"+tid+"')");
                }

                if(!pass3.isEmpty() && !age3.isEmpty() && !sextype3.isEmpty() && !stype3.isEmpty() && !ftype3.isEmpty()&&stype3.equalsIgnoreCase("Business Class"))
                {   x=(int) (Math.random() * 10000000);
                    String tid=pass3+x;
                n3 = s.executeUpdate("insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('" + userid + "','" + pass3 + "','" + age3 + "','" + sextype3 + "','" + stype3 + "','" + ftype3 + "','" + 1 + "','"+tid+"')");
                }
                else
                {
                    x=(int) (Math.random() * 10000000);
                String tid=pass3+x;
                  n3=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass3+"','"+age3+"','"+sextype3+"','"+stype3+"','"+ftype3+"','"+2+"','"+tid+"')");
                }

                    if(!pass4.isEmpty() && !age4.isEmpty() && !sextype4.isEmpty() && !stype4.isEmpty() && !ftype4.isEmpty()&&stype4.equalsIgnoreCase("Business Class"))
                    {  x=(int) (Math.random() * 10000000);
                        String tid=pass4+x;
                        n4=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass4+"','"+age4+"','"+sextype4+"','"+stype4+"','"+ftype4+"','"+1+"','"+tid+"')");
                    }
                        else{
                                x=(int) (Math.random() * 10000000);
                                String tid=pass4+x;
                                n4=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass3+"','"+age3+"','"+sextype3+"','"+stype3+"','"+ftype3+"','"+2+"','"+tid+"')");
                            }
                        if(!pass5.isEmpty() && !age5.isEmpty() && !sextype5.isEmpty() && !stype5.isEmpty() && !ftype5.isEmpty()&&stype5.equalsIgnoreCase("Business Class"))
                        {   x=(int) (Math.random() * 10000000);
                            String tid=pass5+x;
                            n5 = s.executeUpdate("insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('" + userid + "','" + pass5 + "','" + age5 + "','" + sextype5 + "','" + stype5 + "','" + ftype5 + "','" + 1 + "','"+tid+"')");
                        } 
                        else{
                            x=(int) (Math.random() * 10000000);
                            String tid=pass5+x;
                            n5=s.executeUpdate( "insert into bookinginfo(uid,pname,age,sex,seattype,foodtype,seatid,ticketid)values('"+userid+"','"+pass3+"','"+age3+"','"+sextype3+"','"+stype3+"','"+ftype3+"','"+2+"','"+tid+"')");
                }
            }
            catch(SQLException se){
         //Handle errors for JDBC
            se.printStackTrace();
            }catch(NullPointerException e){
            //Handle errors for Class.forName
              e.printStackTrace();
            }
      
             if(n1>0 || n2>0 || n3>0 || n4>0 ||n5>0)
             {
             flag=1;
             }
      return flag;

    }

    /**
     * @return the userid
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * @param userid the userid to set
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }


   private String pno;
private String flightid;
    /**
     * @return the pno
     */
    public String getPno() {
        return pno;
    }

    /**
     * @param pno the pno to set
     */
    public void setPno(String pno) {
        this.pno = pno;
    }

    /**
     * @return the flightid
     */
    public String getFlightid() {
        return flightid;
    }

    /**
     * @param flightid the flightid to set
     */
    public void setFlightid(String flightid) {
        this.flightid = flightid;
    }
        public void updatedata()
        {
             try
            {
            int n = 0,n1=0,n3=0,n4=0,n5=0,n6=0,n7=0,bui=0,eco=0;
            Connection con=MyConnection.createCon();
            Statement s=con.createStatement();
            ResultSet r=s.executeQuery("select seats from flightinfo where fid='"+flightid+"'");
            while(r.next())
            {
              n=r.getInt("seats");
            }
            ResultSet r1=s.executeQuery("select * from seatinfo where fid='"+flightid+"'");
            while(r1.next())
            {
              bui=r1.getInt("bui");
              eco=r1.getInt("eco");
            }



            n=n-Integer.parseInt(pno);
            n1=s.executeUpdate("update flightinfo set seats='"+n+"'where fid='"+flightid+"'");

            if(stype1.equalsIgnoreCase("Business Class"))
            {
                bui = bui - 1;
            n3=s.executeUpdate("update seatinfo set bui='"+bui+"' where fid='"+flightid+"'");
            } else
            {eco=eco-1;
             n3=s.executeUpdate("update  seatinfo set eco='"+eco+"'where fid='"+flightid+"'");
                }
             if(stype2.equalsIgnoreCase("Business Class"))
             {
                 bui=bui-1;
            n4=s.executeUpdate("update  seatinfo set bui='"+bui+"' where fid='"+flightid+"'");
             } else{
                eco=eco-1;
             n4=s.executeUpdate("update  seatinfo set eco='"+eco+"'where fid='"+flightid+"'");
                }
             if(stype3.equalsIgnoreCase("Business Class"))
             {  bui=bui-1;
                 n5 = s.executeUpdate("update  seatinfo set bui='" +bui+ "' where fid='" + flightid + "'");
             } else
             {eco=eco-1;
             n5=s.executeUpdate("update seatinfo set eco='"+eco+"'where fid='"+flightid+"'");
                }
             if(stype4.equalsIgnoreCase("Business Class"))
             {bui=bui-1;
                 n6=s.executeUpdate("update  seatinfo set bui='"+bui+"' where fid='"+flightid+"'");
             }
                 else
             {eco=eco-1;
             n6=s.executeUpdate("update  seatinfo set eco='"+eco+"'where fid='"+flightid+"'");
                }
             if(stype5.equalsIgnoreCase("Business Class"))
             {bui=bui-1;
                 n7=s.executeUpdate("update  seatinfo set bui='"+bui+"' where fid='"+flightid+"'");
             } else
             {eco=eco-1;
             n7=s.executeUpdate("update  seatinfo set eco='"+eco+"'where fid='"+flightid+"'");
                }

            if(n1>0||n3>0||n4>0||n5>0 || n6>0 ||n7>0)
            {
                System.out.println("successfully updated...............");
            }
            }
             catch(SQLException se){
         //Handle errors for JDBC
            se.printStackTrace();
            }catch(NullPointerException e){
            //Handle errors for Class.forName
              e.printStackTrace();
            }

        }
      
    }

