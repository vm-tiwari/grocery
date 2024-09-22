
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>


<nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background: linear-gradient(to right, #161b2e 70%, #293349);">
    <div class="container-fluid">
        <div>
        
            <div class="col">
                <a class="navbar-brand" href="#" style="color: #FFFFFF;"><img src="All_component/img/logo2.png"
                        style="height:60px; width:60px;"></a>
            </div>
            <div class="text-light font-weight-bold">
                <span>Grocery Shop</span>
            </div>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
            aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <div class="col-md-4 ml-3">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="index.jsp" style="color: #FFFFFF;">Home</a></li>
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="Aboutus.jsp" style="color: #FFFFFF;">About us</a></li>
                
            </ul>
            
            </div>
            <div class="col-md-4" >
            <form class="d-flex" action="search.jsp" method="post">
                <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="ch">
                <button class="btn btn-outline-primary" type="submit" style="color: #FFFFFF; border-color: #FFFFFF;">Search</button>
            </form>
            </div>
            
            
            
            <div class="col-md-4 ml-5">
            <!-- Login Button -->
            
            
			<c:if test="${not empty userobj}">
			<a href="checkout.jsp"><i
				class="fa-solid fa-cart-shopping fa-2x pt-1 pr-2 text-white ml-4"></i>
			</a>
		
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user"></i> ${userobj.name }</a> <a href="logout"
					class="btn btn-secondary"><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>
					<a href="setting.jsp" style="height:40px;"class=" my-2 ml-4 my-sm-0 mr-1" type="submit">
				<i class="fa-solid  text-white fa-gear fa-2x"></i> 
			</a>
			

		</c:if>
		<c:if test="${ empty userobj}">

			<div class="row-md-2">
				<a href="login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user-plus"></i>Login</a> <a href="register.jsp"
					class="btn btn-dark"><i class="fa-regular fa-id-card"></i>
					Register</a>
			</div>


		</c:if>    
                
                
                </div>
        </div>
    </div>
</nav>

