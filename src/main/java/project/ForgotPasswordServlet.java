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
            // Kết nối đến cơ sở dữ liệu
            Connection con = ConnectionProvider.getCon();
            PreparedStatement ps = con.prepareStatement("SELECT password FROM user WHERE email=?");
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                // Lấy mật khẩu từ cơ sở dữ liệu
                String password = rs.getString("password");

                // Gửi mật khẩu qua email
                String subject = "Khôi phục mật khẩu - The Coffee Shop";
                String content = "Mật khẩu của bạn là: " + password;
                EmailSender emailSender = new EmailSender();
                emailSender.sendEmail(email, subject, content);

                // Thông báo thành công
                HttpSession session = request.getSession();
                session.setAttribute("message", "Mật khẩu đã được gửi đến email của bạn.");
                response.sendRedirect("forgotPassword.jsp");
            } else {
                // Thông báo lỗi nếu email không tồn tại
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
