/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import javax.annotation.Resource;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.transaction.UserTransaction;
import kardentreeAdmin.jpa.controller.ProductJpaController;
import kardentreeAdmin.jpa.models.Product;

/**
 *
 * @author ryan.
 */
@WebServlet(name = "AddProductAdminServlet", urlPatterns = {"admin/AddProduct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB 
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100, // 100 MB
        location="/"
)

public class AddProductAdminServlet extends HttpServlet {

    private static final String SAVE_DIR = "uploads";

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
        String productName = request.getParameter("productname");
        String category = request.getParameter("category");
        String type = request.getParameter("type");
        String detail = request.getParameter("detail");
        String price = request.getParameter("price");
        //String picture = request.getParameter("pic");

        
        if (productName != null) {
            ProductJpaController productJpa = new ProductJpaController(utx, emf);
            Product product = productJpa.findProductName(productName);
            if (product == null) {
                Product product1 = new Product();

                int numProductCount = productJpa.getProductCount() + 1;
                String productCount = String.valueOf(numProductCount);
                double numPrice = Double.parseDouble(price);

                product1.setProductname(productName);
                product1.setProductid(productCount);
                product1.setCategory(category);
                product1.setType(type);
                product1.setDetail(detail);
                product1.setPrice(numPrice);
                //product1.setPicture(picture);

                // gets absolute path of the web application
                String appPath = System.getProperty("user.dir");

                // constructs path of the directory to save uploaded file
                //String savePath = appPath + File.separator + SAVE_DIR;
                String savePath = "/Users/bankcom/MyDeveloper/KardenTree/web/assets/img/ProductImg/";
                File fileSaveDir = new File(savePath);
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdir();
                }
                for (Part part : request.getParts()) {
                    if (part.getName().equalsIgnoreCase("pic")) {
                        String fileName = extractFileName(part);
                       
                        //เขียนไฟล์
                        part.write(savePath + File.separator + productCount);
                        
                        System.out.println(savePath+fileName);
                    }
                }

                
                try {
                    productJpa.create(product1);
                } catch (Exception ex) {
                    System.out.println(ex);
                }
              
                response.sendRedirect("ProductList");
                return;
            }
        }
        getServletContext().getRequestDispatcher("/adminView/adminAddProduct.jsp").forward(request, response);
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length()-1);
            }
        }
        return "";
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
