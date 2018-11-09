/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.transaction.UserTransaction;
import kardentreeCustomer.jpa.controller.AccountJpaController;
import kardentreeCustomer.jpa.models.Account;

/**
 *
 * @author bankcom
 */
public class adminCustomerServlet extends HttpServlet {

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

        AccountJpaController userAccountCtrl = new AccountJpaController(utx, emf);

        List<Account> userAccount = userAccountCtrl.findAccountEntities();

        request.setAttribute("ListCustomer", userAccount);

        //ViewCustomer
        if (request.getParameter("view") != null) {

            Account viewCustomer = userAccountCtrl.findAccount(request.getParameter("view"));

            if (viewCustomer != null) {
                request.setAttribute("infoCustomer", viewCustomer);
                getServletContext().getRequestDispatcher("/adminView/adminViewCustomer.jsp").forward(request, response);
            }

        }

        //DeleteCustomer  
        if (request.getParameter("deleteAccountID") != null) {
            try {

                userAccountCtrl.destroy(request.getParameter("deleteAccountID"));

            } catch (Exception exp) {
                System.out.println(exp);
            }
        }
        //End Delete

        getServletContext().getRequestDispatcher("/adminView/adminCustomer.jsp").forward(request, response);
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
