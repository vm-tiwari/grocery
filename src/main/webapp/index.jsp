<%@page import="com.entity.product_dtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="All_component/all_css.jsp"%>
<body style="background-color: #fcfcfc; padding-top: 56px;">


  <%@include file="All_component/navbar.jsp"%>
  
  
  
  
  
  <div class="container-fluid mt-5">
  <div id="carouselExampleIndicators" class=" carousel slide"
    data-ride="carousel">
    <ol class="carousel-indicators">
      <li data-target="#carouselExampleIndicators" data-slide-to="0"
        class="active"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
      <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
      <div class="carousel-item active">
        <img class="d-block w-100" src="All_component/img/v.jpg" height="500px"
          alt="First slide">
      </div>
      <div class="carousel-item">
        <img class="d-block w-100" src="All_component/img/vira.jpg" height="500px"
          alt="Second slide">
      </div>
      
    </div>
    <a class="carousel-control-prev" href="#carouselExampleIndicators"
      role="button" data-slide="prev"> <span
      class="carousel-control-prev-icon" aria-hidden="true"></span> <span
      class="sr-only">Previous</span>
    </a> <a class="carousel-control-next" href="#carouselExampleIndicators"
      role="button" data-slide="next"> <span
      class="carousel-control-next-icon" aria-hidden="true"></span> <span
      class="sr-only">Next</span>
    </a>
  </div>
  
  </div>
  
                

  
  
  <div style="max-width: 1300px; background-color: #e6eced; box-shadow: 0 4px 8px rgba(0, 0, 1, 0.1);" class="container p-4 mt-2 mx-auto">
  <div class="row">
        <!-- First Card -->
        <div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
            <div class="card shadow">
                <img src="All_component/img/c11.jpg" class="card-img-top" alt="Card Image" style="width:100px; height:120px; margin-left:80px;">
                <div class="card-body bg-dark text-center text-white py-2 px-4">
                   <a href="Staples.jsp">  <p class="text-bold text-white mb-0">Staples</p></a>
                </div>
            </div>
        </div>

        <!-- Second Card -->
        <div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
            <div class="card shadow">
                <img src="All_component/img/c22.jpg" class="card-img-top" alt="Card Image" style="width:100px; height:120px; margin-left:80px;">
               <div class="card-body bg-dark text-center text-white py-2 px-4">
                    <a href="Snacks_&_Beverages.jsp">  <p class="text-bold text-white mb-0">Snacks & Beverages</p></a>
                </div>
            </div>
        </div>

        <!-- Third Card -->
        <div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
            <div class="card shadow">
                <img src="All_component/img/c33.jpg" class="card-img-top" alt="Card Image" style="width:100px; height:120px; margin-left:80px;">
                <div class="card-body bg-dark text-center text-white py-2 px-4">
                    <a href="Packaged_Food.jsp">  <p class="text-bold text-white mb-0">Packaged Food</p></a>
                </div>
            </div>
        </div>
        <div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
            <div class="card shadow">
                <img src="All_component/img/c44.jpg" class="card-img-top" alt="Card Image" style="width:100px; height:120px; margin-left:80px;">
                <div class="card-body bg-dark text-center text-white py-2 px-4">
                    <a href="Household_Care.jsp">  <p class="text-bold text-white mb-0">Household Care</p></a>
                </div>
            </div>
        </div>
        
    </div>
</div>
  
  
  
  
  
  
  
  
  
  
  <div class="container-fluid p-5">
    <div class="row">
        <div class="col">
            <div class="bg-gray rounded-lg">
          
                <div class="row row-cols-5 ">
                   <% 
   ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConn()); 
   List<product_dtls> list2 = dao2.getpackagefood(); 
   for (product_dtls b : list2) { 
   %>
                    <div class="col ml-5">
                        <div class="card">
                            <div class="image-container position-relative">
                                <div class="first d-flex justify-content-between align-items-center">
                                    <span class="wishlist"><i class="fa fa-heart-o"></i></span>
                                </div>
                                <a href="view_product.jsp?pid=<%=b.getProduct_Id()%>">
                                <img src="All_component/img/h1.jpg" class="img-fluid rounded thumbnail-image" style="height:290px; width:250px; margin-left:20px; margin-right:20px">
                                </a>
                            </div>

                            <div class="product-detail-container p-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h5 class="dress-name"><%=b.getProduct_name() %>  </h5>
                                    <div class="d-flex flex-column mb-2">
                                        <span class="new-price"><%=b.getProduct_price() %></span>
                                       
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <%
   }
                %>
                </div>
                
              
                
                <div class="row row-cols-5 mt-5">
                  <% 
   ProductDAOImpl dao3 = new ProductDAOImpl(DBConnect.getConn()); 
   List<product_dtls> list3 = dao2.getstaples(); 
   for (product_dtls b : list3) { 
   %>
                   
                   
                    <div class="col ml-5">
                        <div class="card">
                            <div class="image-container position-relative">
                                <div class="first d-flex justify-content-between align-items-center">
                                    <span class="wishlist"><i class="fa fa-heart-o"></i></span>
                                </div>
                                <a href="view_product.jsp?pid=<%=b.getProduct_Id()%>">
                                <img src="All_component/img/h1.jpg" class="img-fluid rounded thumbnail-image" style="height:290px; width:250px; margin-left:20px; margin-right:20px">
                                </a>
                            </div>

                            <div class="product-detail-container p-2">
                                <div class="d-flex justify-content-between align-items-center">
                                    <h5 class="dress-name"><%=b.getProduct_name() %></h5>
                                    <div class="d-flex flex-column mb-2">
                                        <span class="new-price"><%=b.getProduct_price() %></span>
                                       
                                    </div>
                                </div> 
                            </div>
                        </div>
                    </div>
                     <%
   }
                %> 
                </div>
                   
                    
                  
                </div>
            </div>
        </div>
    </div>
  
 
 
 <div class="fixed bottom-0 mb-0">
  <%@include file="All_component/index_footer.jsp"%>
</div> 
 
</body>
</html>