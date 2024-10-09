package com.coffeeshop;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/contact")
public class ContactServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String message = request.getParameter("message");

        // Xử lý thông tin liên hệ (có thể gửi qua email hoặc lưu vào cơ sở dữ liệu)
        System.out.println("Received message from " + name + " (" + email + "): " + message);
        
        response.sendRedirect("index.html"); // Chuyển đến trang chính sau khi gửi tin nhắn
    }
}
