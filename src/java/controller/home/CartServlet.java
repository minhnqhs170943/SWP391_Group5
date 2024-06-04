/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package controller.home;

import dal.homepageDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import model.CartItem;
import model.Product;

/**
 *
 * @author LAPTOP ASUS
 */
@WebServlet(name = "CartServlet", urlPatterns = {"/cart"})
public class CartServlet extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet CartServlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet CartServlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        String action = request.getParameter("action");
        HttpSession session = request.getSession(true);
        if (action != null) {
            switch (action) {
                case "add":
                    addToCart(request, session);
                    response.sendRedirect("cart?action=view");
                    break;
                case "view":
                    List<CartItem> carts = (List<CartItem>) session.getAttribute("cart");
                    if (carts == null) {
                        carts = new ArrayList<>();
                    }
                    request.setAttribute("carts", carts);
                    request.getRequestDispatcher("ShoppingCart.jsp").forward(request, response);
                    break;
                case "update":
                    updateCart(request, session);
                    response.sendRedirect("cart?action=view" + "&cartId=" + request.getParameter("productId"));
                    break;
                case "remove":
                    removeFromCart(request, session);
                    response.sendRedirect("cart?action=view");
                    break;
                default:
                    break;
            }
        }
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

//    private void addToCart(HttpServletRequest request, HttpSession session) {
//        homepageDAO homeDao = new homepageDAO();
//        String productId = request.getParameter("productId");
//        Product product = homeDao.getProductByID(productId);
//        int quantity = Integer.parseInt(request.getParameter("quantity"));
//
//        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
//        if (cart == null) {
//            cart = new ArrayList<>();
//        }
//        for (CartItem item : cart) {
//            if (item.getProductId().equals(productId)) {
//                if (product.getQuality() > (quantity + item.getQuality())) {
//                    item.setQuality(item.getQuality() + quantity);
//                    session.setAttribute("cart", cart);
//                    return;
//                }
//                return;
//            }
//        }
//        CartItem newItem = new CartItem(productId, quantity, product.getPrice());
//        cart.add(newItem);
//        session.setAttribute("cart", cart);
//    }
    private void addToCart(HttpServletRequest request, HttpSession session) {
        homepageDAO homeDao = new homepageDAO();
        String productId = request.getParameter("productId");
        Product product = homeDao.getProductByID(productId);
        if (product == null) {
            System.out.println("Product not found with ID: " + productId);
            return;
        }
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart == null) {
            cart = new ArrayList<>();
        }
        for (CartItem item : cart) {
            if (item.getProductId().equals(productId)) {
                if (product.getQuality() > (quantity + item.getQuality())) {
                    item.setQuality(item.getQuality() + quantity);
                    session.setAttribute("cart", cart);
                    return;
                }
                return;
            }
        }
        CartItem newItem = new CartItem(productId, quantity, product.getPrice());
        cart.add(newItem);
        session.setAttribute("cart", cart);
    }

    private void updateCart(HttpServletRequest request, HttpSession session) {
        homepageDAO homeDao = new homepageDAO();
        String productId = request.getParameter("productId");
        Product product = homeDao.getProductByID(productId);
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart != null) {
            for (CartItem item : cart) {
                if (item.getProductId().equals(productId)) {
                    if (product.getQuality() >= quantity) {
                        item.setQuality(quantity);
                        session.setAttribute("cart", cart);
                        return;
                    }

                }
            }
        }
    }

    private void removeFromCart(HttpServletRequest request, HttpSession session) {
        String productId = request.getParameter("productId");
        List<CartItem> cart = (List<CartItem>) session.getAttribute("cart");
        if (cart != null) {
            cart.removeIf(item -> item.getProductId().equals(productId));
            session.setAttribute("cart", cart);
        }
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
