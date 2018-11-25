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
import kardentreeAdmin.jpa.controller.ProductJpaController;
import kardentreeAdmin.jpa.models.Cart;
import kardentreeAdmin.jpa.models.LineItem;
import kardentreeAdmin.jpa.models.Product;
import kardentreeCustomer.jpa.controller.AddressJpaController;
import kardentreeCustomer.jpa.models.Account;
import kardentreeCustomer.jpa.models.Address;

/**
 *
 * @author llujo
 */
public class CheckoutConfirmServlet extends HttpServlet {

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

        Account accountSession = (Account) request.getSession(false).getAttribute("account");
        String UserLoggedIn = accountSession.getAccountid();

        //Create new Address
        if (request.getParameter("newAddress") != null) {

            AddressJpaController addressCtrl = new AddressJpaController(utx, emf);
            //Count of Address
            int numOfAddress = addressCtrl.getAddressCount() + 1;

            Address newAddress = new Address();

            newAddress.setAddressid("" + numOfAddress);
            newAddress.setAccountid(UserLoggedIn);
            newAddress.setActive("1");
            newAddress.setAddress(request.getParameter("newAddress"));

            try {

                addressCtrl.create(newAddress);

            } catch (Exception ex) {
                System.out.println(ex);
            }

        }

        Cart cartList = (Cart) request.getSession(false).getAttribute("cart");
        List<LineItem> forCart = cartList.getLineItems();

        ProductJpaController productCtrl = new ProductJpaController(utx, emf);

        for (int i = 0; i < forCart.size(); i++) {
            //System.out.println(forCart.get(i).getProduct().getProductname());

            Product findproduct = productCtrl.findProduct(forCart.get(i).getProduct().getProductid());  
            findproduct.setQuantity(forCart.get(i).getProduct().getQuantity() - forCart.get(i).getQuantity());
           
            try {
                productCtrl.edit(findproduct);
                
            } catch (Exception e) {
                System.out.println(e);
            }

        }

        System.out.println("OK");

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
