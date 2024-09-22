package forgot_password;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class NewPassword
 */
@WebServlet("/newPassword")
public class NewPassword extends HttpServlet {
  private static final long serialVersionUID = 1L;

  protected void doPost(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {

    HttpSession session = request.getSession();
    String newPassword = request.getParameter("password");
    String confPassword = request.getParameter("confPassword");
    RequestDispatcher dispatcher = null;
    if (newPassword != null && confPassword != null && newPassword.equals(confPassword)) {

      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/grocery", "root", "admin");
        PreparedStatement pst = con.prepareStatement("update user set password = ? where email = ? ");
        pst.setString(1, newPassword);
        pst.setString(2, (String) session.getAttribute("email"));

        int rowCount = pst.executeUpdate();
        if (rowCount > 0) {
          request.setAttribute("succMsg", "Password Updated!!");
          dispatcher = request.getRequestDispatcher("login.jsp");
        } else {
          request.setAttribute("failedMsg", "something went wrong!!");
          dispatcher = request.getRequestDispatcher("login.jsp");
        }
        dispatcher.forward(request, response);
      } catch (Exception e) {
        e.printStackTrace();
      }
    }
  }

}
