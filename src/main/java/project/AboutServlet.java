package project;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/about")
public class AboutServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set attributes for EL in JSP
        request.setAttribute("appName", "The Coffee Shop");
        request.setAttribute("dbms", "Database Management Systems (DBMS)");
        request.setAttribute("networking", "Computer Networking");
        request.setAttribute("bpm", "Business Process Management (BPM)");
        request.setAttribute("os", "Operating Systems (OS)");
        request.setAttribute("contactEmail", "btechdays.care@gmail.com");
        request.setAttribute("instagram", "btechdays");

        // Simulate user login (for session testing)
        HttpSession session = request.getSession();
        session.setAttribute("user", "John Doe");

        // Forward to JSP
        RequestDispatcher rd = request.getRequestDispatcher("about.jsp");
        rd.forward(request, response);
    }
}
