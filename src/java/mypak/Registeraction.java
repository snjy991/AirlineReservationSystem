/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mypak;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/**
 *
 * @author rydr
 */
public class Registeraction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String status="notok";
        String rs="you registered successfully please login";
          Registerbean mbs=(Registerbean)form;
            int sa=mbs.insertdata();
            if(sa == 1)
            {
                status="ok";
                request.getSession(true).setAttribute("rss", rs);
            }
            else
            {
                status="notok";
                
             }
        return mapping.findForward(status);
        
       
    }
}
