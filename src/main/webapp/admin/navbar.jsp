<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav class="navbar fixed-top navbar-expand-lg navbar-light" style="background: linear-gradient(to right, #161b2e 70%, #293349);">
    <div class="container-fluid mt-4  pb-41mb-2">
        <div>
        
            <div class="col">
                <a class="navbar-brand" href="#" style="color: #FFFFFF;"><img src="../../All_component/img/logo2.png"
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
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="home.jsp" style="color: #FFFFFF;">Home</a></li>
                
            </ul>
            </div>
           
            <div class="col-md-2">
            </div>
            <div class="col-md-2 ml-2">
            <!-- Login Button -->
            <c:if test="${not empty userobj }">
				<a  class="btn btn-success text-white"><i
					class="fa-solid fa-user"></i> ${userobj.name }</a>
				<a href="../logout" data-toggle="modal" data-target="#exampleModal"
					class="btn btn-secondary"><i
					class="fa-solid fa-right-from-bracket"></i> Logout</a>
			</c:if>

			<c:if test="${empty userobj }">
				<a href="../login.jsp" class="btn btn-success"><i
					class="fa-solid fa-user-plus"></i>Login</a>
				<a href="../register.jsp" class="btn btn-secondary"><i
					class="fa-regular fa-id-card"></i> Register</a>
			</c:if>
            
            
              </div>
        </div>
    </div>
</nav>






<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<h5 class="modal-title" id="exampleModalLabel">
				</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<div class="modal-body">
				<div class="text-center">
					<h5>Do you want to logout..?</h5>
					<br> <br>
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<a href="../../logout" type="button" class="btn btn-primary text-white">Logout</a>

				</div>

			</div>
			<div class="modal-footer"></div>
		</div>
	</div>
</div>





















