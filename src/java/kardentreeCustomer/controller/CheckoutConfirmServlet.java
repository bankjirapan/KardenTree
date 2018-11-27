/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;
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
import kardentreeCustomer.jpa.controller.OrderdetailJpaController;
//import kardentreeCustomer.jpa.controller.OrderlistJpaController;
import kardentreeCustomer.jpa.controller.OrdersJpaController;
import kardentreeCustomer.jpa.models.Account;
import kardentreeCustomer.jpa.models.Address;
import kardentreeCustomer.jpa.models.Orderdetail;
//import kardentreeCustomer.jpa.models.Orderlist;
import kardentreeCustomer.jpa.models.Orders;

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

        //CheckEmptyCart  
        if (request.getSession().getAttribute("cart") == null) {
            response.sendRedirect("Product");
            return;
        };

        //Data Universal
        double totalPrice = 0;

        Account accountSession = (Account) request.getSession(false).getAttribute("account");
        String UserLoggedIn = accountSession.getAccountid();

        Cart cartList = (Cart) request.getSession(false).getAttribute("cart");
        List<LineItem> forCart = cartList.getLineItems();

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

        } else {

            //JpaController
            ProductJpaController productCtrl = new ProductJpaController(utx, emf);
            //OrderlistJpaController orderListCtrl = new OrderlistJpaController(utx, emf);
            OrdersJpaController orderJpa = new OrdersJpaController(utx, emf);
            OrderdetailJpaController orderdetailJpa = new OrderdetailJpaController(utx, emf);
            
            Orders order = new Orders();
                order.setAccountid(UserLoggedIn);
                order.setOrderdate(new Date());
                order.setTotalprice(cartList.getTotalPrice());
                
                try{
                orderJpa.create(order);
            } catch (Exception e){
                System.out.println(e);
            }

            for (int i = 0; i < forCart.size(); i++) {
//                //System.out.println(forCart.get(i).getProduct().getProductname());
//                Orderlist orderList = new Orderlist();
//                //setOrderList
//                orderList.setAccountid(UserLoggedIn);
//                orderList.setAddressid(request.getParameter("CustomerAddress"));
//                orderList.setDate(new Date());
//                orderList.setOrderid(orderListCtrl.getOrderlistCount() + 1 + "");
//                orderList.setProductid(forCart.get(i).getProduct().getProductid());
//                orderList.setTotalprice(forCart.get(i).getTotalPrice());
//
//                totalPrice = forCart.get(i).getTotalPrice();

                

                //Remove 
                Product findproduct = productCtrl.findProduct(forCart.get(i).getProduct().getProductid());
                findproduct.setQuantity(forCart.get(i).getProduct().getQuantity() - forCart.get(i).getQuantity());

                try {
                    //orderListCtrl.create(orderList);
                    //orderJpa.create(order);
                    Orderdetail orderdetail = new Orderdetail();
                    orderdetail.setOrderid(order);
                    orderdetail.setPrice(forCart.get(i).getProduct().getPrice());
                    orderdetail.setQuantity(forCart.get(i).getQuantity());
                    orderdetail.setProductid(forCart.get(i).getProduct().getProductid());
                    orderdetailJpa.create(orderdetail);


                    productCtrl.edit(findproduct);

                } catch (Exception e) {
                    System.out.println(e);
                }

            }
            
            

            request.getSession(false).removeAttribute("cart");
            request.setAttribute("totalprice", totalPrice);
            request.setAttribute("cartList", cartList);
            getServletContext().getRequestDispatcher(("/CheckoutConfirmView.jsp")).forward(request, response);

        }

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
