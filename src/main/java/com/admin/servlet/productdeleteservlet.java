package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;

@WebServlet("/delete")
public class productdeleteservlet extends HttpServlet{
@Override
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	try {
	      
	      int id=Integer.parseInt(req.getParameter("id"));
	      
	      ProductDAOImpl dao=new ProductDAOImpl(DBConnect.getConn());
	      boolean f=dao.deleteProduct(id);
	      HttpSession session=req.getSession();
	      

	      if(f){
	        
	        session.setAttribute("succMsg", "Product Deleted...");
	        resp.sendRedirect("admin//manage_product.jsp");
	      }else {
	        
	        session.setAttribute("failedMsg", "Something went wrong!!!");
	        resp.sendRedirect("admin//manage_product.jsp");
	        
	      }
	      
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
}
}
