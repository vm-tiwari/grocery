package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.ProductDAOImpl;
import com.DB.DBConnect;
import com.entity.product_dtls;

@WebServlet("/add")
@MultipartConfig
public class product_Add extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {

		      String product_name = req.getParameter("pname");
		      String product_brand = req.getParameter("brand");
		      String product_price = req.getParameter("price");
		      String product_Categories = req.getParameter("category"); 
		      Part part=req.getPart("image");
		      String fileName = part.getSubmittedFileName();

		      product_dtls b = new product_dtls(product_name,product_brand,product_price,product_Categories,fileName );
		      ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());

		      boolean f = dao.addProducts(b);
		      HttpSession session = req.getSession();
		      if (f){
		              
		        String path =getServletContext().getRealPath("")+"product";
		           
		          java.io.File file=new java.io.File(path);
		          
		          part.write(path+java.io.File.separator+fileName);
		          
		        
		        
		        session.setAttribute("succMsg", "product Added Successfully");
		        resp.sendRedirect("admin/Add_product.jsp");
		      } 
		      
		      else {
		        session.setAttribute("failedMsg", "Failed ");
		        resp.sendRedirect("admin/Add_product.jsp");
		      }

		    } catch (Exception e) {
		      e.printStackTrace();
		    }

		
	}

}
