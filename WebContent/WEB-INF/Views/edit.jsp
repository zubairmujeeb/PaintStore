<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" > -->
<title>Editing</title>
</head>
<body>
	
	<div class="container">

		<section>
		<form action="save" class="text-justify">

			<table class="table">
				<!-- iterate over the collection using forEach loop -->
				<tr class="thead-dark">
					<th>id</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>

				</tr>
				<%--  <c:forEach var="user" items="${att}">
   
       <tr>
       <td><input type="text" name="id" readonly="readonly" value="${user.id}"></td>
       <td><input type="text" name="t1" value="${user.name}"></td>
       <td><input type="text" name="t2" value="${user.description }"> </td>
       <td><input type="text" name="t3" value="${user.price }" > </td>
      <td><input type="submit"></td>
     
       
   </c:forEach> --%>
				<tr>
					<td><input type="text" name="id" readonly="readonly"
						value="${att.id}"></td>
					<td><input type="text" name="t1" value="${att.name}"></td>
					<td><input type="text" name="t2" value="${att.description }">
					</td>
					<td><input type="text" name="t3" value="${att.price }">
					</td>
					<td><input type="submit" class="text- bg-info"></td>

				</tr>

			</table>

		</form>
		</section>
		<blockquote class="blockquote bg-faded text-danger ">

			Do you want to inspire your students to write great narratives,
			essays, and reports? Check out these grade-specific writing topics
			organized by mode (explanatory, creative, and so on). Or search for
			writing topics that relate to a theme, such as “life” or “animals” or
			“family.”
			<div class="blockquote-footer text-info ">Zubair Mujeeb</div>
		</blockquote>
		<div class="row">



			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid figure-img"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid figure-img"
				src="https://media-cdn.tripadvisor.com/media/photo-s/10/c4/51/0e/sunrise-from-hot-air.jpg">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>
			<figure class="col-sm-6 col-md-4 col-xl-2"> <img
				class="img-fluid"
				src="https://ssl-product-images.www8-hp.com/digmedialib/prodimg/lowres/c05503784.png">
			<figcaption class="figure-caption"> Do you want to
			inspire your students to write great narratives, essays, and reports?
			Check out these grade-specific writing topics organized by mode
			(explanatory, creative, and so on). Or search for writing topics that
			relate to a theme, such as “life” or “animals” or “family.” </figcaption> </figure>

		</div>

	</div>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>