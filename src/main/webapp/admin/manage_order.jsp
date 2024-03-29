
<%@page import="com.entity.Product_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.User"%>
<%@page import="com.DAO.ProductOrderDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Order</title>
<%@include file="all_css.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj }">
		<c:redirect url="../login.jsp">

		</c:redirect>
	</c:if>

	<h4 class="text-center pt-2 mt-5">
		<b><i class="fa-solid fa-user"></i> Hello Admin</b>
	</h4>

	<table class="table mt-5 table-striped">
		<thead class="bg-secondary text-white">
			<tr>
				<th scope="col">Oredr Id</th>
				<th scope="col">Name</th>
				<th scope="col">Email</th>
				<th scope="col">Address</th>
				<th scope="col">Phone No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Price</th>
				<th scope="col">Payment Type</th>
			</tr>
		</thead>
		<tbody>


			<%
			User u = (User) session.getAttribute("userobj");
			ProductOrderDAOImpl dao = new ProductOrderDAOImpl(DBConnect.getConn());
			List<Product_Order> blist = dao.getAllOrder();
			for (Product_Order b : blist) {
			%>
			<tr>
				<th scope="row"><%=b.getOrderId()%></th>
				<td><%=b.getUserName()%></td>
				<td><%=b.getUserEmail()%></td>
				<td><%=b.getFullAdd()%></td>
				<td><%=b.getPhone()%></td>
				<td><%=b.getProductName()%></td>
				<td><%=b.getPrice()%></td>
				<td><%=b.getPaymentType()%></td>

			</tr>

			<%
			}
			%>



		</tbody>
	</table>
	<div class="p-5">
		<%@include file="footer.jsp"%></div>


</body>
</html>
