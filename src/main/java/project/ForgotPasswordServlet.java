package project;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.sql.*;

@WebServlet("/forgotPasswordAction")
public class ForgotPasswordServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) 
            throws ServletException, IOException {
        
        String email = request.getParameter("email");

        try {
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("SELECT * FROM user WHERE email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Tạo mật khẩu mới (ngẫu nhiên hoặc mặc định)
                String newPassword = "123456";
                
                // Cập nhật mật khẩu trong cơ sở dữ liệu
                PreparedStatement updatePs = con.prepareStatement("UPDATE user SET password=? WHERE email=?");
                updatePs.setString(1, newPassword);
                updatePs.setString(2, email);
                updatePs.executeUpdate();

                // Gửi email khôi phục
                String subject = "Khôi phục mật khẩu - The Coffee Shop";
                String content = "Mật khẩu mới của bạn là: " + newPassword;
                EmailSender emailSender = new EmailSender();
                emailSender.sendEmail(email, subject, content);

                HttpSession session = request.getSession();
                session.setAttribute("message", "Mật khẩu mới đã được gửi tới email của bạn.");
                response.sendRedirect("forgotPassword.jsp");
            } else {
                HttpSession session = request.getSession();
                session.setAttribute("error", "Email không tồn tại trong hệ thống.");
                response.sendRedirect("forgotPassword.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}

