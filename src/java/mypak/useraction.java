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
public class useraction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
   
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        String status="notok";
           uservalid mbs=(uservalid)form;
            int sa=mbs.validate();
            if(sa >= 1)
            {
                status="ok";
                request.getSession(true).setAttribute("uid", sa);
            }
            else
            {
                status="notok";
             }
        return mapping.findForward(status);
        
       
    }
}
