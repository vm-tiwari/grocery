package com.user.servlet;
import java.io.IOException;
import javax.servlet.ServletException;import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;import javax.servlet.http.HttpSession;

import com.DB.DBConnect;

import com.DAO.UserDAOimpl;
import com.entity.User;

@WebServlet("/update_profile")
public class UpdateProfileServlet extends HttpServlet { @Override
 protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {  try {
      int id = Integer.parseInt(req.getParameter("id"));
   String name = req.getParameter("name");   String email = req.getParameter("email");
   String phone = req.getParameter("phone");   String password = req.getParameter("password");
   String check = req.getParameter("check");
   User us = new User();   
   us.setId(id);
   us.setName(name);   us.setEmail(email);
   us.setPhone(phone);  
      
      
   HttpSession session = req.getSession();   UserDAOimpl dao = new UserDAOimpl(DBConnect.getConn());
   boolean f = dao.checkPassword(id, password);   if (f) {
    boolean f2 = dao.updateProfile(us);    if (f2) {
     session.setAttribute("succMsg", "Profile Updated..");     resp.sendRedirect("edit_profile.jsp");
    } else {
     session.setAttribute("failedMsg", "Something Went wrong...");     resp.sendRedirect("edit_profile.jsp");
    }
   } else {    session.setAttribute("failedMsg", "Enter Valid Password..");
    resp.sendRedirect("edit_profile.jsp");   }
  } catch (Exception e) {
   e.printStackTrace();  }
 }
}
