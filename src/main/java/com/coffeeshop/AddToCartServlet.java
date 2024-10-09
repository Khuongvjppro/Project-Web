package com.coffeeshop;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/add-to-cart")
public class AddToCartServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String productName = request.getParameter("product");
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        Product product = null;
        if ("Arabica Coffee".equals(productName)) {
            product = new Product("Arabica Coffee", 50000, "Hương vị dịu nhẹ.");
        } else if ("Robusta Coffee".equals(productName)) {
            product = new Product("Robusta Coffee", 40000, "Vị đậm đà và mạnh mẽ.");
        }

        HttpSession session = request.getSession();
        Cart cart = (Cart) session.getAttribute("cart");
        if (cart == null) {
            cart = new Cart();
            session.setAttribute("cart", cart);
        }

        if (product != null) {
            cart.addProduct(product, quantity);
        }

        response.sendRedirect("index.html");
    }
}
