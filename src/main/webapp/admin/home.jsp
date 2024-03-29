<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home Page</title>
<%@include file="all_css.jsp"%>
<style type="text/css">
.crd-ho:hover {
  background: linear-gradient(to top, #87CEEB, #fff);
  color: black;
}

.crd-ho {
  box-shadow: 0 0 10px 0 rgba(0, 0, 0, 0.3);
}
</style>
</head>
<body style="background-color: #fcfcfc; padding-top: 200px;">
  <%@include file="navbar.jsp"%>

  <h4 class="text-center pt-2">
        <b><i class="fa-solid fa-user"></i> Hello Sir</b>
    </h4>
    <div class="container mt-10">
        <div class="row p-5">

            <div class="col-md-3">
                
                    <div class="card border-secondary mb-3 crd-ho" style="max-width: 18rem;">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-cart-plus fa-5x text-success"></i><br>
                            <a href="Add_product.jsp" class="text-dark"><h4 class="mt-3">Add Grocery</h4>
                            ---------</a>
                        </div>
                    </div>
             
            </div>

            <div class="col-md-3">
               
                    <div class="card border-secondary mb-3 crd-ho" style="max-width: 18rem;">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-pen fa-5x text-warning"></i><br>
                            <a href="manage_product.jsp " class="text-dark"><h4 class="mt-3">Manage Product</h4>
                            ---------</a>
                        </div>
                    </div>
                
            </div>

            <div class="col-md-3">
               
                    <div class="card border-secondary mb-3 crd-ho" style="max-width: 18rem;">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-people-carry-box fa-5x text-danger"></i><br>
                            <a href="manage_order.jsp" class="text-dark"><h4 class="mt-3">Manage Order</h4>
                            ---------</a>
                        </div>
                    </div>
             
            </div>

            <div class="col-md-3">
               
                    <div class="card border-secondary mb-3 crd-ho" style="max-width: 18rem;">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-user fa-5x text-secondary"></i><br>
                           <a href="manage_user.jsp" class="text-dark"> <h4 class="text-dark mt-3">Manage User</h4>
                            ---------</a>
                        </div>
                    </div>
                
            </div>
        </div>
    </div>
 

<div class="p-5">
  <%@include file="footer.jsp"%></div>


</body>
</html>