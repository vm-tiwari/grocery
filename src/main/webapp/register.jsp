<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register Page</title>
<%@include file="All_component/all_css.jsp"%>
<style>
body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-color: white;
    background-repeat: no-repeat;
    
    margin-bottom:20px;
}

.card0 {
    box-shadow: 0px 4px 8px 0px #757575;
    border-radius: 0px;
}

.card2 {
    margin: 0px 40px;
}



.image {
    width: 700px;
    height: 600px;
}

.border-line {
    border-right: 1px solid #EEEEEE;
}



.line {
    height: 1px;
    width: 45%;
    background-color: #E0E0E0;
    margin-top: 10px;
}

.or {
    width: 10%;
    font-weight: bold;
}

.text-sm {
    font-size: 14px !important;
}

::placeholder {
    color: #BDBDBD;
    opacity: 1;
    font-weight: 300
}

:-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

::-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

input, textarea {
    padding: 10px 12px 10px 12px;
    border: 1px solid lightgrey;
    border-radius: 2px;
    margin-bottom: 5px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    color: #2C3E50;
    font-size: 14px;
    letter-spacing: 1px;
}

input:focus, textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #304FFE;
    outline-width: 0;
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0;
}

a {
    color: inherit;
    cursor: pointer;
}

.btn-blue {
    background-color: #1A237E;
    width: 150px;
    color: #fff;
    border-radius: 2px;
}

.btn-blue:hover {
    background-color: #000;
    cursor: pointer;
}

.bg-blue {
    color: #fff;
    background-color: #1A237E;
}

@media screen and (max-width: 991px) {
    .logo {
        margin-left: 0px;
    }

    .image {
        width: 300px;
        height: 220px;
    }

    .border-line {
        border-right: none;
    }

    .card2 {
        border-top: 1px solid #EEEEEE !important;
        margin: 0px 15px;
    }
}

</style>
</head>
<body>

<%@include file="All_component/navbar.jsp"%>
<div class="navbar-top" style="margin-top:150px; width:100vw;">
<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    
                    <div class="row justify-content-center ml-1">
                        <img src="All_component/img/reg_img.jpg" class="image">
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="card2 card border-0 px-4 py-5">
                    <div class="row mb-4 px-3 ml-5">
                    <h1>Register Here!</h1>
                    </div>
                    
                    
                    <c:if test="${not empty succMsg }">
              <p class="text-center text-success">${succMsg}</p>
              <c:remove var="succMsg" scope="session" />
            </c:if>

            <c:if test="${not empty failedMsg }">
              <p class="text-center text-danger">${failedMsg}</p>
              <c:remove var="failedMsg" scope="session" />
            </c:if>
                    
                    
                    <form action="register" method="post">
                     <div class="row px-3">
                        <label class="mb-1"><h6 class="mb-0 text-sm">Full Name</h6></label>
                        <input class="mb-4" type="text" name="name" placeholder="Enter Name">
                    </div>
                     <div class="row px-3">
                        <label class="mb-1"><h6 class="mb-0 text-sm">Email Address</h6></label>
                        <input class="mb-4" type="text" name="email" placeholder="Enter a valid email address">
                    </div>
                    <div class="row px-3">
                        <label class="mb-1"><h6 class="mb-0 text-sm">Mobile No</h6></label>
                        <input class="mb-4" type="number" name="phone" placeholder="Enter Mobile no">
                    </div>
                    <div class="row px-3">
                        <label class="mb-1"><h6 class="mb-0 text-sm">Password</h6></label>
                        <input type="password" name="password" placeholder="Enter password">
                    </div>
                    <div class="row px-3 mb-4">
                        <div class="custom-control custom-checkbox custom-control-inline">
                            <input id="chk1" type="checkbox" name="check" class="custom-control-input"> 
                            <label for="chk1" class="custom-control-label text-sm">Term & Condition</label>
                        </div>
                        <a href="login.jsp" class="ml-auto mb-0 text-sm text-primary">Already Register?</a>
                    </div>
                    <div class="row mb-3 px-6 ml-3 ">
                        <button type="submit" class="btn btn-blue text-center">Register</button>
                    </div>
                    </form>
                </div>
            </div>
        </div>
        
    </div>
</div>
</div>
<div class="">
  <%@include file="All_component/index_footer.jsp"%>
</div>
</body>
</html>