<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
</head>


<%@include file="./Shared/Navbar.jsp"%>

<body>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css" />
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->




	<!-- NOTICIAS & EVENTOS -->
	<section class="section"> <article class="container">
	<div class="row">

		<ol class="breadcrumb bread-primary ">
			<a href="/HaiderPaint/" class="btn btn-primary"><i
				class="fa fa-newspaper-o"></i> Home</a>
			<li><a href="#"></a></li>
			<li><a href="allpaints">all paints</a></li>
			<li><a href="">${att}</a></li>

		</ol>
	</div>


	<div class="row">
		<c:forEach var="user" items="${paint}">
			<div class="col-md-9">

				<!-- ITEM -->

				<!-- ITEM -->
				<div class="item">
					<div class="row">
						<div class="col-md-3">
							<a href="#"> <img class="img-responsive"
								src="resources/images/productsmaster/${user.images}" alt="">
							</a>
						</div>
						<div class="col-md-9">
							<div class="descrip">
								<a href="#">
									<p class="h3">${user.nameitem}</p>
								</a>
								<p>${user.desciption}</p>
								<p></p>
								<p>
									<i class="fa fa-calendar"></i> Package Size / <i
										class="fa  fa-user-o"></i> ${user.packingsize}
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- ITEM -->




			</div>
			<div class="col-md-3">
				<!-- ITEM -->
				<div class="item">
					<div class="thumbnail">
						<div class="caption">
							<div class="descrip">
								<p class="strong"></p>
								<p></p>
								<p>
									<a href="#" class="btn btn-link" role="button"></a>
								</p>
							</div>
						</div>
					</div>
				</div>



				<!-- ITEM -->

			</div>

		</c:forEach>

	</div>

	<div class="row">

		<ol class="breadcrumb bread-primary ">
			<a href="/HaiderPaint/" class="btn btn-primary"><i
				class="fa fa-newspaper-o"></i> Home</a>
			<li><a href="#"></a></li>
			<li><a href="allpaints">all paints</a></li>
			<li><a href="">${att}</a></li>

		</ol>
	</div>

	</article> </section>



	<%@include file="./Shared/footer.jsp"%>





</body>
</html>