/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.controller;

import KardentreeLibrary.SendMail;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;
import static kardentreeCustomer.controller.CustomerLoginServlet.cryptWithMD5;
import static kardentreeCustomer.controller.RegisterServlet.cryptWithMD5;
import static kardentreeCustomer.controller.RegisterServlet.genActivatedKey;
import kardentreeCustomer.jpa.controller.AccountJpaController;
import kardentreeCustomer.jpa.controller.exceptions.RollbackFailureException;
import kardentreeCustomer.jpa.models.Account;

/**
 *
 * @author Krittapak
 */
public class ForgetServlet extends HttpServlet {

    @PersistenceUnit(unitName = "KardenTreePU")
    EntityManagerFactory emf;

    @Resource
    UserTransaction utx;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountJpaController accountCtrl = new AccountJpaController(utx, emf);
        if (request.getParameter("email") != null) {

            Account searchemail = accountCtrl.findAccountEmail(request.getParameter("email"));
            if (searchemail != null) {
                String keyForget = genActivatedKey();

                searchemail.setPassword(keyForget);

                try {
                    accountCtrl.edit(searchemail);
                } catch (RollbackFailureException ex) {
                    Logger.getLogger(ForgetServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (Exception ex) {
                    Logger.getLogger(ForgetServlet.class.getName()).log(Level.SEVERE, null, ex);
                }

                System.out.println(keyForget);

            }
        }
        if (request.getParameter("keyForgotten") != null) {
            Account findKey = accountCtrl.findAccountPassword(request.getParameter("keyForgotten"));
            if (findKey != null) {
                request.setAttribute("accountid", findKey.getAccountid());
                getServletContext().getRequestDispatcher("/ForgottenView.jsp").forward(request, response);
            }
        }
        if (request.getParameter("customerid")!=null) {
            
           
          Account findAccount = accountCtrl.findAccount(request.getParameter("customerid"));
          
          if(findAccount != null){
              findAccount.setPassword(cryptWithMD5(request.getParameter("password")));
               try {
                    accountCtrl.edit(findAccount);
                } catch (RollbackFailureException ex) {
                    Logger.getLogger(ForgetServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (Exception ex) {
                    Logger.getLogger(ForgetServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
               response.sendRedirect("Login?success=1");
               return;
          }
            
            
            
        }
        getServletContext().getRequestDispatcher("/ForgetView.jsp").forward(request, response);

    }
    
    public static String cryptWithMD5(String pass) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            byte[] passBytes = pass.getBytes();
            md.reset();
            byte[] digested = md.digest(passBytes);
            StringBuffer sb = new StringBuffer();
            for (int i = 0; i < digested.length; i++) {
                sb.append(Integer.toHexString(0xff & digested[i]));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException ex) {
            System.out.println(ex);
        }
        return null;
    }

    public static String genActivatedKey() {
        Random rd = new Random();
        String key = "";
        int count = 0;

        while (count != 10) {
            char i = (char) (rd.nextInt(26) + 65);
            key = key + i;
            count++;
        }

        return key;

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
