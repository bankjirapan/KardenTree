/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package kardentreeAdmin.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;
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
import kardentreeCustomer.jpa.controller.CategoryJpaController;
import kardentreeCustomer.jpa.models.Category;

/**
 *
 * @author ryan.
 */
@WebServlet(name = "AddProductAdminServlet", urlPatterns = {"admin/AddProduct"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB 
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100, // 100 MB
        location = "/"
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
        String quantity = request.getParameter("quantity");
        //String picture = request.getParameter("pic");

        // gets absolute path of the web application
        String appPath = System.getProperty("user.dir");
        //String savePath = "/Users/bankcom/MyDeveloper/KardenTree/web/assets/img/ProductImg/";
        String LocalStorage = request.getServletContext().getRealPath(File.separator);
        String PathSaveImg = LocalStorage.replaceAll("/build/web/", "/web/assets/img/ProductImg/");

        if (productName != null) {
            ProductJpaController productJpa = new ProductJpaController(utx, emf);
            Product product = productJpa.findProductName(productName);
            if (product == null) {
                Product product1 = new Product();

                int numProductCount = productJpa.getProductCount() + 1;
                String productCount = String.valueOf(numProductCount);
                double numPrice = Double.parseDouble(price);

                // gets absolute path of the web application
                File fileSaveDir = new File(PathSaveImg);
                if (!fileSaveDir.exists()) {
                    fileSaveDir.mkdir();
                }
                for (Part part : request.getParts()) {
                    if (part.getName().equalsIgnoreCase("pic")) {
                        String fileName = extractFileName(part);

                        //เขียนไฟล์
                        part.write(PathSaveImg + File.separator + productName + ".jpg");
                        product1.setPicture("assets/img/ProductImg/" + productName + ".jpg");
                    }
                }

                product1.setProductname(productName);
                product1.setProductid(genProductId());
                product1.setCategory(category);
                product1.setType(type);
                product1.setDetail(detail);
                product1.setPrice(numPrice);
                product1.setQuantity(Integer.valueOf(quantity));

                try {
                    productJpa.create(product1);
                } catch (Exception ex) {
                    System.out.println(ex);
                }

                response.sendRedirect("ProductList");
                return;
            }
        }

        //Get Category Product
        CategoryJpaController categoryProduct = new CategoryJpaController(utx, emf);
        List<Category> Listcategory = categoryProduct.findCategoryEntities();

        request.setAttribute("Category", Listcategory);
        getServletContext().getRequestDispatcher("/adminView/adminAddProduct.jsp").forward(request, response);
    }

    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }

    private String genProductId() {
        Random rd = new Random();
        String productId = "PD";
        ProductJpaController productJpa = new ProductJpaController(utx, emf);
        Product product = new Product();

        while (product != null) {
            while (productId.length() != 10) {
                int code = rd.nextInt(10);
                String stCode = String.valueOf(code);
                productId = productId + stCode;
            }
            product = productJpa.findProduct(productId);
        }
        
        return productId;

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
