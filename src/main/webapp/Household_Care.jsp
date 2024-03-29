<%@page import="com.entity.product_dtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style type="text/css"> 
.crd-ho:hover { 
   background: linear-gradient(to top, #87CEEB, #fff); /* Light blue to white gradient */ 
  color: #fff; 
  
} 
.productimg{ 
transition:ease 0.8s; 
} 
.productimg:hover { 
    transform:scale(1.2); /* Light blue to white gradient */ 
  color: #fff; 
   
} 
.crd-ho{ 
box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3); 
} 
</style>


<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="All_component/all_css.jsp"%>
</head>
<body>
	<%@include file="All_component/navbar.jsp"%>






<% 
 User u = (User) session.getAttribute("userobj"); 
 %> 
 
 
 <%@include file="All_component/navbar.jsp"%> 
 
 <div class="container-fluid" style="margin-top:150px;"> 
  <div class="row ml-4"> 
 
 
   <% 
   ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConn()); 
   List<product_dtls> list2 = dao2.getAllHouseHold(); 
   for (product_dtls b : list2) { 
   %> 
   <div class="col-md-3 mt-5"> 
    <div class="card border-secondary mb-3 crd-ho" 
     style="max-width: 18rem;"> 
 
     <div class="card-body text-dark text-center"> 
      <img alt="" class="productimg" src="product/<%=b.getProduct_photo() %>" 
       style="width: 80px; height: 120px;" class="img-thumblin"> 
      <h6 class="mt-4"><%=b.getProduct_name()%></h6> 
      <h6> 
       Categories : 
       <%=b.getProduct_Category()%></h6> 
      <div class="row-ml-5"> 
 
 
 
 
 
       <% 
       if (u == null) { 
       %> 
 
       <a href="login.jsp" class="btn btn-secondary btn-sm ml-3"><i 
        class="fa-solid fa-cart-shopping"></i>Add Cart</a> 
 
       <% 
       } else { 
       %> 
 
        <a href="cart?pid=<%=b.getProduct_Id()%>&&uid=<%=u.getId()%>" 
        class="btn btn-secondary btn-sm ml-3"><i 
        class="fa-solid fa-cart-shopping"></i>Add Cart</a> 
 
       <% 
       } 
       %> 
 
 
 
 
 
 
 
 
       <a href="view_product.jsp?bid=<%=b.getProduct_Id()%>" class="btn btn-info btn-sm ml-1">View</a> <a href="" 
        class="btn btn-success btn-sm ml-1"><i 
        class="fa-solid fa-rupee-sign"></i>.<%=b.getProduct_price()%></a> 
      </div> 
     </div> 
    </div> 
   </div> 
   <% 
   } 
   %> 
 
  </div> 
 </div>




	<div class="fixed bottom-0 mb-0">
		<%@include file="All_component/index_footer.jsp"%>
	</div>
</body>
</html>