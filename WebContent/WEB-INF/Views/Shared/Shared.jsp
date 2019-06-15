<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 
 
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<title>Shared</title>
<style>
  /* Make the image fully responsive */
  .carousel-inner img {
    width: 100%;
    height: 100%;
  }
  .bg-lightgray
{
    background-color:LightGray;
}
  </style>
  
</head>
<body >
<!-- nav bar -->



<%@include file="Navbar.jsp" %>
<!-- slider -->
<div class=" container jumbotron mt-2" >

<div id="demo" class="carousel slide" data-ride="carousel">
  <ul class="carousel-indicators">
    <li data-target="#demo" data-slide-to="0" class="active"></li>
    <li data-target="#demo" data-slide-to="1"></li>
    <li data-target="#demo" data-slide-to="2"></li>
  </ul>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="resources/images/2.jpg" alt="Los Angeles" width="1 " height="500">
      <div class="carousel-caption">
        <h3 style="color: black;">Los Angeles</h3>
        <p style="color: black;" >We had such a great time in LA!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="resources/images/3.jpg" alt="Chicago" width="1100" height="500">
      <div class="carousel-caption">
        <h3 style="color: black;">Chicago</h3>
        <p style="color: black;">Thank you, Chicago!</p>
      </div>   
    </div>
    <div class="carousel-item">
      <img src="resources/images/1.jpg" alt="New York" width="1100" height="500">
      <div class="carousel-caption">
        <h3 style="color: black;">New York</h3>
        <p style="color: black;">We love the Big Apple!</p>
      </div>   
    </div>
  </div>
  <a class="carousel-control-prev" href="#demo" data-slide="prev">
    <span class="carousel-control-prev-icon"></span>
  </a>
  <a class="carousel-control-next" href="#demo" data-slide="next">
    <span class="carousel-control-next-icon"></span>
  </a>
</div>

</div>


<div class="container" >
<div class="row"  >
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "   src="https://comps.canstockphoto.ie/photo-gallery-blue-flat-design-web-icon-stock-images_csp55467656.jpg">
<span class="badge badge-danger badge-pill" >Latest</span>	
<input  type="button" class="btn btn-info" value="SeeMore" >

</figure>
</div>
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="https://previews.123rf.com/images/alexwhite/alexwhite1704/alexwhite170403123/76144245-register-web-design-violet-silver-metallic-border-internet-icon-.jpg">
<a class="btn btn-info" href="Registration"  >Registration</a>


</figure>
</div>
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid"  style="height: 200px; width: 200px; "   src="data:image/jpeg;base64,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">
<a class="btn btn-info" href="Searchpeople"  >Search Poeple</a>


</figure>
</div>
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="http://longviewpainting.com/wp-content/uploads/2017/10/1services_icon_tn.png">
<a class="btn btn-info" href="allpaints"  >Our Services</a>
</figure>
</div>

<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="https://image.flaticon.com/icons/svg/189/189069.svg">
<a class="btn btn-info" href="shadecards"  >Shade Cards</a>
</figure>
</div>

<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="https://www.con-vergence.com/wp-content/uploads/2015/01/customized-icon.png">
	
<input  type="button" class="btn btn-info" value="Create Own Paint"  >
<span class="badge badge-primary badge-pill" >Custom Paint</span>

</figure>
</div>
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="https://cdn2.iconfinder.com/data/icons/ios7-inspired-mac-icon-set/1024/Calculator_5122x.png">

<input  type="button" class="btn btn-info" value="Calculate Paint" >
<span class="badge badge-danger badge-pill" >New</span>	
</figure>
</div>
<div class="col-sm-3 " >
<figure style=""  >

<img class="img-fluid" style="height: 200px; width: 200px; "  src="https://cdn.onlinewebfonts.com/svg/img_279196.png">
<input  type="button" class="btn btn-info" value="Benifits & Others" >
</figure>
</div>

</div>
</div>

<!-- content -->

<%@include file="footer.jsp" %>

<!-- footer -->


    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


</body>

</html>