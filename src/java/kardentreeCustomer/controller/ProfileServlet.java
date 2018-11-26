/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.controller;

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
import kardentreeCustomer.jpa.controller.AddressJpaController;
import kardentreeCustomer.jpa.models.Account;
import kardentreeCustomer.jpa.models.Address;

/**
 *
 * @author llujo
 */
public class ProfileServlet extends HttpServlet {

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

        if (request.getSession().getAttribute("account") == null) {
            response.sendRedirect("Login");
            return;
        };

        Account accountSession = (Account) request.getSession(false).getAttribute("account");
        String UserLoggedIn = accountSession.getAccountid();

        AccountJpaController userAccountCtrl = new AccountJpaController(utx, emf);
        AddressJpaController customerAddressCtrl = new AddressJpaController(utx, emf);

        Account viewCustomer = userAccountCtrl.findAccount(UserLoggedIn);

        List<Address> viewAddress = customerAddressCtrl.findAddressList(UserLoggedIn);

        if (viewAddress != null) {
            request.setAttribute("CustomerAddress", viewAddress);
        }

        request.setAttribute("infoCustomer", viewCustomer);

        //EditProfile submit
        if (request.getParameter("accountid") != null) {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String telno = request.getParameter("telno");

            Account editAccount = userAccountCtrl.findAccount(request.getParameter("accountid"));

            if (editAccount != null) {
                editAccount.setFname(fname);
                editAccount.setLname(lname);
                editAccount.setTelno(telno);

                try {
                    userAccountCtrl.edit(editAccount);
                } catch (Exception e) {
                    System.out.println(e);
                }
                
                response.sendRedirect("profile?result=ok");
                return;

            }

        }

        getServletContext().getRequestDispatcher("/profileView.jsp").forward(request, response);

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
