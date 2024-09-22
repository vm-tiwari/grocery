<%@page import="com.entity.User"%>
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
<title>Index page</title>

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
</head>
<%@include file="All_component/all_css.jsp"%>
<body style="background-color: #fcfcfc; padding-top: 56px;">


	<%@include file="All_component/navbar.jsp"%>





	<div class="container-fluid mt-5 " style="background-color:;" >
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
					<img class="d-block w-100" src="All_component/img/v.jpg"
						height="500px" alt="First slide">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="All_component/img/vira.jpg"
						height="500px" alt="Second slide">
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



	<div
		style="max-width: 1300px; background-color: #e6eced; box-shadow: 0 4px 8px rgba(0, 0, 1, 0.1);"
		class="container p-4 mt-2 mx-auto">
		<div class="row">
			<!-- First Card -->
			<div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
				<div class="card shadow">
					<img src="All_component/img/c11.jpg" class="card-img-top"
						alt="Card Image"
						style="width: 120px; height: 150px; margin-left: 80px;">
					<div class="card-body bg-dark text-center text-white py-2 px-4">
						<a href="Staples.jsp">
							<p class="text-bold text-white mb-0">Staples</p>
						</a>
					</div>
				</div>
			</div>

			<!-- Second Card -->
			<div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
				<div class="card shadow">
					<img src="All_component/img/c22.jpg" class="card-img-top"
						alt="Card Image"
						style="width: 120px; height: 150px; margin-left: 80px;">
					<div class="card-body bg-dark text-center text-white py-2 px-4">
						<a href="Snacks_&_Beverages.jsp">
							<p class="text-bold text-white mb-0">Snacks & Beverages</p>
						</a>
					</div>
				</div>
			</div>

			<!-- Third Card -->
			<div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
				<div class="card shadow">
					<img src="All_component/img/c33.jpg" class="card-img-top"
						alt="Card Image"
						style="width: 120px; height: 150px; margin-left: 80px;">
					<div class="card-body bg-dark text-center text-white py-2 px-4">
						<a href="Packaged_Food.jsp">
							<p class="text-bold text-white mb-0">Packaged Food</p>
						</a>
					</div>
				</div>
			</div>
			<div class="col-12 col-sm-6 col-md-2 col-lg-3 mb-4">
				<div class="card shadow">
					<img src="All_component/img/c44.jpg" class="card-img-top"
						alt="Card Image"
						style="width: 120px; height: 150px; margin-left: 80px;">
					<div class="card-body bg-dark text-center text-white py-2 px-4">
						<a href="Household_Care.jsp">
							<p class="text-bold text-white mb-0">Household Care</p>
						</a>
					</div>
				</div>
			</div>

		</div>
	</div>





<%
					User u = (User) session.getAttribute("userobj");
					%>




	<div class="container-fluid p-5" style="background-color: #fcfcfc;">
		<div class="row ml-2">
			<div class="col">
				<div class="bg-gray rounded-lg">

					<div class="container-fluid" style="margin-top: 20px; background-color: #d3e0e0;">
						<div class="row ml-4">


							<%
							ProductDAOImpl dao2 = new ProductDAOImpl(DBConnect.getConn());
							List<product_dtls> list2 = dao2.getpackagefood();
							for (product_dtls b : list2) {
							%>
							<div class="col-md-3">
								<div class="card border-secondary mb-3 crd-ho"
									style="max-width: 18rem;">

									<div class="card-body text-dark text-center">
										<img alt="" class="productimg"
											src="product/<%=b.getProduct_photo()%>"
											style="width: 100px; height: 140px;" class="img-thumblin">
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


											<a href="view_product.jsp?pid=<%=b.getProduct_Id()%>"
												class="btn btn-info btn-sm ml-1">View</a> <a href=""
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



<div class="container-fluid mt-5 " style="background-color: ;" >
		<div id="carouselExampleIndicators" class=" carousel slide"
			data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#carouselExampleIndicators" data-slide-to="0"
					class="active"></li>
				<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
		
			</ol>
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img class="d-block  w-100" src="All_component/img/n22.jpg"
						height="400px" alt="First">
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" src="All_component/img/n33.jpg"
						height="400px" alt="Second">
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


					


					<div class="container-fluid" style="margin-top: 20px;">
						<div class="row ml-4">


							<%
							ProductDAOImpl dao = new ProductDAOImpl(DBConnect.getConn());
							List<product_dtls> list = dao.getstaples();
							for (product_dtls b : list) {
							%>
							<div class="col-md-3">
								<div class="card border-secondary mb-3 crd-ho"
									style="max-width: 18rem; max-hight:18rem;">

									<div class="card-body text-dark text-center">
										<img alt="" class="productimg"
											src="product/<%=b.getProduct_photo()%>"
											style="width: 100px; height: 140px;" class="img-thumblin">
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


											<a href="view_product.jsp?pid=<%=b.getProduct_Id()%>"
												class="btn btn-info btn-sm ml-1">View</a> <a href=""
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





				</div>
			</div>
		</div>
	</div>



	<div class="fixed bottom-0 mb-0">
		<%@include file="All_component/index_footer.jsp"%>
	</div>

</body>
</html>