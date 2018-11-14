/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeCustomer.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Random;
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
 * @author ryan.
 */
public class RegisterServlet extends HttpServlet {

    @PersistenceUnit
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
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String Email = request.getParameter("email");
        String tel = request.getParameter("tel");

        if (username != null && password != null && Email != null) {
            AccountJpaController accountJpa = new AccountJpaController(utx, emf);
            Account account = accountJpa.findAccountUsername(username);
            if (account == null) {
                Account email = accountJpa.findAccountEmail(Email);
                if (email == null) {
                    String accountCount = String.valueOf(accountJpa.getAccountCount()+1);
                    Account account2 = new Account();
                    account2.setAccountid(accountCount);
                    account2.setEmail(Email);
                    account2.setFname(fname);
                    account2.setLname(lname);
                    account2.setPassword(cryptWithMD5(password));
                    account2.setUsername(username);
                    account2.setTelno(tel);
                    account2.setCreateDate(new Date().toString());
                    account2.setUpdateDate(new Date().toString());
                    account2.setActivated(false);
                    account2.setActivate(genActivatedKey()); // ต้อง Random
                    try {
                        accountJpa.create(account2);
                    } catch (Exception ex) {
                        System.out.println("ex");
                    }
                    response.sendRedirect("CompleteRegisterView.jsp");
                    return;
                }
            }
            getServletContext().getRequestDispatcher("/RegisterView.jsp").forward(request, response);
            return;
        }
        getServletContext().getRequestDispatcher("/RegisterView.jsp").forward(request, response);
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
    
    public static String genActivatedKey (){
        Random rd = new Random();
        String key = "";
        int count = 0;
        
        while(count!=10){
            char i = (char)(rd.nextInt(26)+65);
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
