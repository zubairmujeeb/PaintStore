<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@include file="/WEB-INF/Views/Shared/Navbar.jsp" %>
<body>
<img  height="250px" width="100%" alt="" src="resources/images/FotoJet.jpg">

<br>

<br>

<div class="container">
<br>  <p class="text-center">Calculate paint <a href="http://bootstrap-ecommerce.com/"> haiderpaint.com</a></p>
<hr>

<div class="row">
	<aside class="col-sm-4">
<p>Room Measurements</p>
<div class="card">
<article class="card-body">
	 <form>
    <div class="form-group">
    	<label>Length</label>
        <input name="length" placeholder="length" type="number" name="quantity"  class="form-control"  >
    </div> <!-- form-group// -->
    <div class="form-group">
    	
    	<label>Width</label>
      <input name="" class="form-control" type="number" name="quantity" placeholder="Width" type="">
    </div> <!-- form-group// --> 
    <div class="form-group">
    	<label>Height</label>
        <input name="" class="form-control" type="number" name="quantity" placeholder="height" type="">
    </div> <!-- form-group// -->
    <div class="form-group">
    	
    	<label>No of doors</label>
      <input name="" class="form-control" type="number" name="quantity" placeholder="Doors" type="">
    </div> <!-- form-group// --> 
    <div class="form-group">
    	<label>No of Windows</label>
        <input name="" class="form-control" type="number" name="quantity" placeholder="Windows" type="">
    </div> <!-- form-group// -->
    
    	                                               
</form>
</article>
</div> <!-- card.// -->

	</aside> <!-- col.// -->
	<aside class="col-sm-4">
<p>Select Product</p>

<div class="card">
<article class="card-body">

	<form>
    <div class="form-group">
    <label>Select Brand</label>
     <select class="form-control">
     <option>--Select Brand--</option>
     <option>Berger</option>
      <option>master</option>
      <option>Pell</option>
      <option>White Horse</option>
      <option>Balck horse</option>
     </select>
    </div> <!-- form-group// -->
    <div class="form-group">
     <label>Select Category</label>
         <select class="form-control">
     <option>--Select Brand--</option>
     <option>Master category</option>
      <option>Berger Category</option>
      
     </select>
    </div> <!-- form-group// -->                                      
                                                               
</form>
</article>
</div> <!-- card.// -->

	</aside> <!-- col.// -->
	<aside class="col-sm-4">
<p>Required Paint</p>

<div class="card">
<article class="card-body">
	
	<form>
	<label>Wall paint required:</label>
	
	
	
	<h3>14 Ltr/kg</h3>
	
	
	
	<label>Ceiling paint required:</label>
	
	<h3>7 Ltr/kg</h3>
	
	
	<p>Please note that results are based on smooth walls, you will need to add 20% more for painting porous, rough or previously unpainted walls. Results shown are for two coats.</p>
	</form>
</article>
</div> <!-- card.// -->

	</aside> <!-- col.// -->
</div> <!-- row.// -->

</div> 
<!--container end.//-->

<br><br><br>

</body>
<%@include file="/WEB-INF/Views/Shared/footer.jsp" %>
</html>