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
import javax.servlet.http.HttpSession;
import javax.transaction.UserTransaction;
import kardentreeAdmin.jpa.models.Cart;
import kardentreeCustomer.jpa.controller.AddressJpaController;
import kardentreeCustomer.jpa.models.Account;
import kardentreeCustomer.jpa.models.Address;

/**
 *
 * @author llujo
 */
public class CheckoutServlet extends HttpServlet {

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
        
        //CheckEmptyCart
        
        if(request.getSession().getAttribute("cart") == null){
            response.sendRedirect("Product");
            return;
        };

        Account accountSession = (Account) request.getSession(false).getAttribute("account");
        String UserLoggedIn = accountSession.getAccountid();

        //getAddressAll
        AddressJpaController address = new AddressJpaController(utx, emf);
        List<Address> getAddress = address.findAddressList(UserLoggedIn);
        if (getAddress.isEmpty()) {
            request.setAttribute("AccountInfo", accountSession);
            System.out.println("Empty");
        } else {
            request.setAttribute("AccountInfo", accountSession);
            request.setAttribute("AddressList", getAddress);
        }
        //getAddressActive
        Address addressActive = address.findUserAddressActive(UserLoggedIn);
        if (addressActive != null) {
            request.setAttribute("AccountInfo", accountSession);
            request.setAttribute("AddressActive", addressActive);
        }

        //setActiveAddress
        if (request.getParameter("setActiveAddress") != null) {

            //Remove recent active
            Address FindaddressActive = address.findUserAddressActive(UserLoggedIn);
            FindaddressActive.setActive("0");
            //Set new Active Address
            Address SetaddressActive = address.findAddress(request.getParameter("setActiveAddress"));
            SetaddressActive.setActive("1");
            try {
                address.edit(FindaddressActive);
                address.edit(SetaddressActive);
            } catch (Exception e) {
                System.out.println(e);
            }

            response.sendRedirect("Checkout");
            return;

        }

        //Normal display cart
        Cart cartList = (Cart) request.getSession(false).getAttribute("cart");
        request.setAttribute("cartList", cartList);

        getServletContext().getRequestDispatcher("/CheckoutView.jsp").forward(request, response);

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
