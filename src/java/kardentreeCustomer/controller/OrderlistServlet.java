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
import kardentreeCustomer.jpa.controller.OrderdetailJpaController;
import kardentreeCustomer.jpa.controller.OrdersJpaController;
import kardentreeCustomer.jpa.models.Account;
import kardentreeCustomer.jpa.models.Orderdetail;
import kardentreeCustomer.jpa.models.Orders;

/**
 *
 * @author ryan.
 */
public class OrderlistServlet extends HttpServlet {
    @PersistenceUnit (unitName = "KardenTreePU")
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
        Account account = (Account) request.getSession().getAttribute("account");
        OrdersJpaController orderJpa = new OrdersJpaController (utx,emf);
        
        List<Orders> orders = orderJpa.findOrdersListByAccountid(account.getAccountid());
        request.setAttribute("orders", orders);
        
        String detail = request.getParameter("detail");
        String orderid = request.getParameter("orderid");
        
        if(detail!=null){
            
            int numOrderid = Integer.valueOf(orderid);
            OrderdetailJpaController orderdetailJpa = new OrderdetailJpaController(utx,emf);
            
            List<Orderdetail> orderdetail = orderdetailJpa.findOrderdetailByOrderid(numOrderid);
            request.setAttribute("orderdetail", orderdetail);
            getServletContext().getRequestDispatcher("/Orderdetaillist.jsp").forward(request, response);
        }
        
        getServletContext().getRequestDispatcher("/Orderlist.jsp").forward(request, response);
        
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
