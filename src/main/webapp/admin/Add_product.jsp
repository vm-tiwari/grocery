<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Add Product Page</title>
    <%@include file="all_css.jsp"%>
</head>
<body style="background-color: #fcfcfc; padding-top: 90px;">
    <%@include file="navbar.jsp"%>
    
    
    <c:if test="${empty userobj }"> 
  <c:redirect url="../login.jsp"> 
 
  </c:redirect> 
 </c:if> 
 
 <h4 class="text-center p-2">Add products</h4> 
 
 
 <c:if test="${not empty succMsg }"> 
  <p class="text-center text-success">${succMsg}</p> 
  <c:remove var="succMsg" scope="session" /> 
 </c:if> 
 
 <c:if test="${not empty failedMsg }"> 
  <p class="text-center text-danger">${failedMsg}</p> 
  <c:remove var="failedMsg" scope="session" /> 
 </c:if>
    

    <div class="bg-gray-300 mt-4">
        <div class="container mt-5">
            <div class="row justify-content-center">
                <div class="col-lg-6 bg-white rounded-lg shadow-lg p-4">

                    <h1 class="text-2xl text-center font-thin">Add Product</h1>
        

                    <form action="${pageContext.request.contextPath}/add" method="post" 
      											 enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="productName">Name</label>
                            <input type="text" class="form-control" name="pname" id="productName" placeholder="Product Name">
                        </div>

                        <div class="form-group">
                            <label for="brandName">Brand</label>
                            <input type="text" class="form-control"  name="brand" id="brandName" placeholder="Brand Name">
                        </div>

                        <div class="form-group">
                            <label for="price">Price</label>
                            <input type="number" class="form-control" name="price" id="price" placeholder="Price">
                        </div>

                        <div class="form-group">
                            <label for="category">Category</label>
                            <select class="form-control" name="category" id="category">
                                <option selected>--- Select ---</option>
                                <option value="staples">Staples </option>
                                <option value="Snackes">Snacks & Beverages </option>
                                <option value="Packaged Food">Packaged Food</option>
                                <option value="Household care">Household Care</option>
                                
                            </select>
                        </div>

                    

                        <div class="form-group">
                            <label for="image">Upload Image</label>
                            <input type="file" class="form-control" name="image" id="image">
                        </div>

                        <div class="form-group mt-4">
                            <button type="submit" class="btn btn-success btn-block">Add</button>
                        </div>
                    </form>

                </div>
            </div>
        </div>
    </div>
<div class="mt-5">
    <%@include file="footer.jsp"%></div>
</body>
</html>
