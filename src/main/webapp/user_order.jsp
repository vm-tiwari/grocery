<%@page import="com.entity.Product_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductOrderDAOImpl"%>
<%@page import="com.entity.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="All_component/all_css.jsp"%>


	<%@include file="All_component/navbar.jsp"%>

	<c:if test="${empty userobj}">

		<c:redirect url="login.jsp"></c:redirect>

	</c:if>





	<h4 class="text-center text-dark mt-4">Your Order</h4>

	<c:if test="${not empty succMsg }">
		<h5 class="text-center text-success">${succMsg}</h5>
		<c:remove var="succMsg" scope="session" />
	</c:if>

	<c:if test="${not empty failedMsg }">
		<h5 class="text-center text-danger">${failedMsg}</h5>
		<c:remove var="failedMsg" scope="session" />
	</c:if>


 
	<div class="container-fluid p-2 mt-5">


		<table class="table table-striped">
			<thead class="bg-secondary text-white">
				<tr>
					<th scope="col">Order Id</th>
					<th scope="col">Name</th>
					<th scope="col">Product Name</th>
					<th scope="col">Price</th>
					<th scope="col">Payment Type</th>
					<th scope="col">  </th>
					<th scope="col">Action</th>
				</tr>
			</thead>
			<tbody>

				<%
				User u = (User) session.getAttribute("userobj");
				ProductOrderDAOImpl dao = new ProductOrderDAOImpl(DBConnect.getConn());
				List<Product_Order> blist = dao.getProduct(u.getEmail());
				for (Product_Order b : blist) {
				%>


				<tr>
					<th scope="row"><%=b.getOrderId()%></th>
					<td><%=b.getUserName()%></td>
					<td><%=b.getProductName()%></td>
					<td><%=b.getPrice()%></td>
					<td><%=b.getPaymentType()%></td>
					<td><input name="order_id" type="hidden"
						value="<%=b.getOrderId()%> "></td>
					<td><a href="Orderdelete?order_id=<%=b.getOrderId()%>"
						class="btn btn-sm btn-danger"> Cancel</a></td>

				</tr>

				<%
				}
				%>


			</tbody>
		</table>


	</div>







	<div class="p-5">
		<%@include file="All_component/footer.jsp"%></div>
</body>
</html>