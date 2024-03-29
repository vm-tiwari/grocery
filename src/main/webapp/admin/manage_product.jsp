<%@page import="java.util.List"%>
<%@page import="com.entity.product_dtls"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.ProductDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="all_css.jsp"%>
</head>
<body style="background-color: #fcfcfc; padding-top: 140px;">
	<%@include file="navbar.jsp"%>


	<table class="table">
		<thead class="bg-primary text-white">
			<tr>
				<th scope="col">ID</th>
				<th scope="col">Photo</th>
				<th scope="col">Name</th>
				<th scope="col">Brand</th>
				<th scope="col">Price</th>
				<th scope="col">Category</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

	<%
      ProductDAOImpl dao=new ProductDAOImpl(DBConnect.getConn());
      List<product_dtls> list=dao.getAllProducts();
      for (product_dtls b : list ){
      %>

			<tr>
				<th scope="row"><%=b.getProduct_Id() %></th>
				<td><img src="../../product/<%=b.getProduct_photo() %>" style="width:50px; height:50px;"></td>
				<td><%=b.getProduct_name() %></td>
				<td><%=b.getProduct_brand() %></td>
				<td><%= b.getProduct_price()%></td>
				<td><%=b.getProduct_Category() %></td>
				<td>
				<a href="edit_product.jsp?id=<%=b.getProduct_Id()%>" class="btn btn-success btn-sm">Edit</a>
			
				<a  href="${pageContext.request.contextPath}/delete?id=<%=b.getProduct_Id()%>"class="btn btn-danger btn-sm">Delete</a>
				
				</td>
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