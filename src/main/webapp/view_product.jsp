<%@page import="com.entity.product_dtls"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%> 
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" 
 pageEncoding="UTF-8"%> 
<!DOCTYPE html> 
<html> 
<head> 
<meta charset="UTF-8"> 
<title>View Details</title> 
<%@include file="All_component/all_css.jsp"%> 
</head> 
<body> 
 
 <%
 User u= (User) session.getAttribute("userobj");
 %>

 
 <%@include file="All_component/navbar.jsp"%> 
 
 <% 
 int id = Integer.parseInt(request.getParameter("pid")); 
 ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn()); 
 product_dtls b = dao.getProductId(id); 
 %> 
 
 <div class="container-fluid" style="margin-top:100px;"> 
  <div class="row ml-4 mr-4"> 
   <div class="col-md-6 text-center border bg-white p-5 mt-4"> 
    <img src="product/<%=b.getProduct_photo()%>" 
     style="height: 280px; width: 220px;"> 
    <h5 class="mt-4"> 
     Product Name : <span class="text-secondary"><%=b.getProduct_name()%></span> 
    </h5> 
    <h5 class="mt-2"> 
     Category : <span class="text-secondary"><%=b.getProduct_Category()%></span> 
    </h5> 
   </div> 
 
   <div class="col-md-6 text-center border bg-white p-5 mt-4"> 
    <h2 class="mt-6"><i class="fa-solid fa-book-open"></i> <%=b.getProduct_name()%></h2> 
    <div class="row mt-5"> 
     <div class="col-md-4 text-center text-success p-2 "> 
 
      <i class="fa-solid fa-money-check-dollar fa-2x"></i> 
      <h5>Cash On Delivery</h5> 
     </div> 
     <div class="col-md-4 text-center text-secondary p-2"> 
      <i class="fa-solid fa-arrow-rotate-left fa-2x"></i> 
      <h5>7 Days Return Policy</h5> 
     </div> 
     <div class="col-md-4 text-center text-info p-2"> 
      <i class="fa-solid fa-truck fa-2x"></i> 
      <h5>Free Shipping</h5> 
     </div> 
 
    </div> 
    <div class="text-center mt-5"> 

 
     <a href="" class="btn btn-success btn-lg ml-1"><i 
      class="fa-solid fa-rupee-sign"></i>. <%=b.getProduct_price() %> </a> 
        <a href="cart?pid=<%=b.getProduct_Id() %>&&uid=<%=u.getId() %>" class="btn btn-dark btn-lg ml-1">Add to Cart </a> 
    </div> 
 
   </div> 
  </div> 
 </div> 
<div class="p-5"> 
 <%@include file="All_component/footer.jsp"%></div> 
</body> 
</html>