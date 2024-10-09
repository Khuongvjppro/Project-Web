package com.coffeeshop;
import java.io.IOException;
import java.io.PrintWriter;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/calculateOrder")
public class CalculateOrderServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        // Lấy thông tin từ form
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        int productPrice = Integer.parseInt(request.getParameter("product"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        
        // Tính tổng chi phí
        int totalCost = productPrice * quantity;

        try (PrintWriter out = response.getWriter()) {
            out.println("<html><head><title>Kết Quả Đơn Hàng</title></head><body>");
            out.println("<h1>Kết Quả Đơn Hàng</h1>");
            out.println("<p>Họ và tên: " + name + "</p>");
            out.println("<p>Email: " + email + "</p>");
            out.println("<p>Địa chỉ: " + address + "</p>");
            out.println("<p>Giá sản phẩm: " + productPrice + " VND</p>");
            out.println("<p>Số lượng: " + quantity + "</p>");
            out.println("<p><strong>Tổng chi phí: " + totalCost + " VND</strong></p>");
            out.println("<a href='orderForm.html'>Quay lại</a>");
            out.println("</body></html>");
        }
    }
}
