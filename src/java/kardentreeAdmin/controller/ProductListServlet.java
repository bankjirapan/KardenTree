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
 * @author bankcom
 */
@WebServlet(name = "ProductListServlet", urlPatterns = {"admin/ProductList"})
@MultipartConfig(fileSizeThreshold = 1024 * 1024 * 10, // 10 MB 
        maxFileSize = 1024 * 1024 * 50, // 50 MB
        maxRequestSize = 1024 * 1024 * 100, // 100 MB
        location = "/"
)

public class ProductListServlet extends HttpServlet {

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

        ProductJpaController product = new ProductJpaController(utx, emf);

        List<Product> productAll = product.findProductEntities();

        String uri = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();

        request.setAttribute("URL", uri);
        request.setAttribute("ProductAll", productAll);

        // gets absolute path of the web application
        String appPath = System.getProperty("user.dir");
        //String savePath = "/Users/bankcom/MyDeveloper/KardenTree/web/assets/img/ProductImg/";
        String LocalStorage = request.getServletContext().getRealPath(File.separator);
        String PathSaveImg = LocalStorage.replaceAll("/build/web/", "/web/assets/img/ProductImg/");
   
        
        

        //ViewProduct
        if (request.getParameter("view") != null) {

            Product productView = product.findProduct(request.getParameter("view"));

            if (productView != null) {
                request.setAttribute("URL", uri);
                request.setAttribute("ProductView", productView);
                getServletContext().getRequestDispatcher("/adminView/adminViewProduct.jsp").forward(request, response);
                return;
            }

        }
        // End viewProduct

        //Edit Product
        if (request.getParameter("edit") != null) {

            Product productEdit = product.findProduct(request.getParameter("edit"));

            if (productEdit != null) {
                request.setAttribute("URL", uri);
                request.setAttribute("productEdit", productEdit);
                getServletContext().getRequestDispatcher("/adminView/adminEditProduct.jsp").forward(request, response);
                return;
            }

        }

        //Confirm edit
        if (request.getParameter("confirmEdit") != null) {

            String productName = request.getParameter("productname");
            String category = request.getParameter("category");
            String type = request.getParameter("type");
            String detail = request.getParameter("detail");
            String price = request.getParameter("price");
            String quantity = request.getParameter("quantity");

            double numPrice = Double.parseDouble(price);

            Product ProductEditAs = product.findProduct(request.getParameter("confirmEdit"));

            File fileSaveDir = new File(PathSaveImg);
            if (!fileSaveDir.exists()) {
                fileSaveDir.mkdir();
            }
            for (Part part : request.getParts()) {
                if (part.getName().equalsIgnoreCase("pic")) {
                    String fileName = extractFileName(part);

                    //เขียนไฟล์
                    part.write(PathSaveImg + File.separator + request.getParameter("confirmEdit") + ".jpg");
                    ProductEditAs.setPicture("assets/img/ProductImg/" + request.getParameter("confirmEdit") + ".jpg");
                }
            }

            ProductEditAs.setProductname(productName);
            ProductEditAs.setCategory(category);
            ProductEditAs.setType(type);
            ProductEditAs.setDetail(detail);
            ProductEditAs.setPrice(numPrice);
            ProductEditAs.setQuantity(Integer.valueOf(quantity));

            try {
                product.edit(ProductEditAs);
            } catch (Exception ex) {
                System.out.println(ex);
            }

            response.sendRedirect("ProductList");
            return;

        }

        //------------------------
        //Remove Product
        if (request.getParameter("delete") != null) {

            Product deleteProduct = product.findProduct(request.getParameter("delete"));

            if (deleteProduct != null) {
                //Remove to Database
                try {
                    product.destroy(request.getParameter("delete"));
                } catch (Exception ex) {
                    System.out.println(ex);
                }

                //Remove File
                try {

                    File file = new File(PathSaveImg + request.getParameter("delete") + ".jpg");

                    if (file.delete()) {
                        System.out.println(file.getName() + " is deleted!");
                    } else {
                        System.out.println("Delete operation is failed.");
                    }

                } catch (Exception e) {

                    e.printStackTrace();

                }

                response.sendRedirect("ProductList");
                return;

            }

        }

        //-----------------------
        getServletContext().getRequestDispatcher("/adminView/adminProductList.jsp").forward(request, response);
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
