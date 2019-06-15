<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<style>
#nn{

color: #00719c;
}


</style>
<%@include file="/WEB-INF/Views/Shared/Navbar.jsp" %>
<br>
<body>

<div class="container" align="center">
<div class="fusion-title title fusion-title-size-two"><h2 class="title-heading-left" data-fontsize="26" data-lineheight="32"><b id="nn">Order Online<b></h2><div class="title-sep-container"><div class="title-sep sep-none"></div></div></div>

<hr>



<div class="col-md-5">
    <div class="form-area">  
        <form action="submited" method="post">
        <br style="clear:both">
                   
    				<div class="form-group">
						<input type="text" class="form-control" required="required" id="name" name="name" placeholder="Name" >
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="email" name="email" placeholder="Email" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="mobile" name="mobilenumber" placeholder="Mobile Number" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="subjects" name="subjects" placeholder="Subject" required>
					</div>
					<div class="form-group">
						<input type="text" class="form-control" id="city" name="city" placeholder="City" required>
					</div>
					
      				<div class="form-group">
    					<label for="emailFrom" class="control-label">Surface to be painted:</label>
    					<div class="col-lg-10">
    						<select class="form-control" id="surfacetopainted" name="surfacetopainted">
    							<option>Select</option>
    							<option value="Sergio Rodriguez|sergio.rodriguez@tix.com">Interior</option>
    							<option value="Silvia Mahoney|silvia.mahoney@tix.com">Exterior</option>
    							
    						</select>
    					</div>
    				</div>
                                        
      			
					 
  <br>
  <div class=" form-group">
		      <label class="labeltext">Request for visit of Sales Representative?</label><br>
		          <div id="sales" class="form-check-inline">

					<label class="customradio" ><span class="radiotextsty">Yes</span>
					  <input type="radio" value="1" checked="checked" name="sales">
					  <span class="checkmark"></span>
					</label>        
					<label class="customradio"><span class="radiotextsty">No</span>
					  <input type="radio" value="0" name="sales">
					  <span class="checkmark"></span>
					</label>

				</div>
		  </div>
				
        <div  class="form-group">
                    <textarea class="form-control" type="textarea" name="message" id="message" placeholder="Message" maxlength="140" rows="7"></textarea>
                        <span class="help-block"><p id="characterLeft" class="help-block ">You have reached the limit</p></span>                    
                    </div>
            
        <button  type="submit" id="submit" name="submit" class="btn btn-primary pull-right">Submit Form</button>
        </form>
    </div>
</div>
</div>



</body>
<br>
<%@include file="/WEB-INF/Views/Shared/footer.jsp" %>
</html>