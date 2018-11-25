/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.controller;

import java.io.IOException;
import java.io.PrintWriter;
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
import kardentreeAdmin.jpa.models.Product;

/**
 *
 * @author ryan.
 */
public class CartServlet extends HttpServlet {

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
        
        
        String page = request.getParameter("page");

        if (request.getParameter("remove") != null) {

            ProductJpaController productJpa = new ProductJpaController(utx, emf);
            Product p = productJpa.findProduct(request.getParameter("remove"));
            Cart cart = (Cart) request.getSession().getAttribute("cart");
            cart.remove(p);
            if(page.equalsIgnoreCase("cart")){
                request.setAttribute("cart",cart);
                request.getSession().setAttribute("totalprice", cart.getTotalPrice());
                response.sendRedirect("Cart");
                return;
            }
            request.getSession().setAttribute("cart", cart);
            request.getSession().setAttribute("totalprice", cart.getTotalPrice());
            response.sendRedirect("Product");
            return;
        }

        //Normal display cart
        Cart cartList = (Cart) request.getSession(false).getAttribute("cart");
        request.setAttribute("cartList", cartList);

        String quantity = request.getParameter("quantity");
        if (quantity != null) {
            if (quantity.equalsIgnoreCase("plus")) {
                ProductJpaController productJpa = new ProductJpaController(utx, emf);
                Product p = productJpa.findProduct(request.getParameter("productid"));
                Cart cart = (Cart) request.getSession(false).getAttribute("cart");
                cart.add(p);
                //request.setAttribute("cart", cart);
                request.getSession().setAttribute("cart", cart);
                request.getSession().setAttribute("totalprice", cart.getTotalPrice());
                response.sendRedirect("Cart");
                return;
            }
            if (quantity.equalsIgnoreCase("minus")) {
                ProductJpaController productJpa = new ProductJpaController(utx, emf);
                Product p = productJpa.findProduct(request.getParameter("productid"));
                Cart cart = (Cart) request.getSession().getAttribute("cart");
                cart.minus(p);
                request.getSession().setAttribute("cart", cart);
                request.getSession().setAttribute("totalprice", cart.getTotalPrice());
                response.sendRedirect("Cart");
                return;
            }
        }

        getServletContext().getRequestDispatcher(("/Cart.jsp")).forward(request, response);
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
