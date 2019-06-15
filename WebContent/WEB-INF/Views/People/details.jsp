<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="resources/css/Detailspagestyling.css" rel="stylesheet"  >
</head>
<body>
<%@include file="/WEB-INF/Views/Shared/Navbar.jsp" %>
<br>
<form action="hireme">
<div class="container">
	<div class="row">
		<h2>User Details are as follows Please check the details and contact:</h2>
        
        
       <div class="col-md-7 ">
       <br>

<div class="panel panel-default">
  <div class="panel-heading">  <h4 >User Profile</h4></div>
   <div class="panel-body">
       
    <div class="box box-info">
        
            <div class="box-body">
                     <div class="col-sm-6">
                     <div  align="center"> <img alt="User Pic" src="https://x1.xingassets.com/assets/frontend_minified/img/users/nobody_m.original.jpg" id="profile-image1" class="img-circle img-responsive"> 
                
                <input id="profile-image-upload" class="hidden" type="file">

                <!--Upload Image Js And Css-->
           
                     </div>
              
              <br>
    
              <!-- /input-group -->
            </div>
            <div class="col-sm-6">
            <h4 style="color:#00b1b1;">Prasad Shankar Huddedar </h4></span>
              <span><p>Aspirant</p></span>   
              
              <input type="submit" value="HireMe" class="btn btn-info" >         
            </div>
            <div class="clearfix"></div>
            <hr style="margin:5px 0 5px 0;">
    
<c:forEach var="user" items="${att}">
   
      
       
     
       

<div class="col-sm-5 col-xs-6 tital " >First Name:</div><div class="col-sm-7 col-xs-6 "> ${user.name}</div>
     <div class="clearfix"></div>
<div class="bot-border"></div>


<div class="col-sm-5 col-xs-6 tital " >phonenumber:</div><div class="col-sm-7"> ${user.phonenumber}</div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Available:</div><div class="col-sm-7">${user.isAvailable}</div>

  <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Adress:</div><div class="col-sm-7">${user.adress}</div>

 <div class="clearfix"></div>
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >Skills:</div><div class="col-sm-7">${user.skills}</div>

 <div class="clearfix"></div>	
<div class="bot-border"></div>

<div class="col-sm-5 col-xs-6 tital " >experience:</div><div class="col-sm-7">${user.experience}</div>
</c:forEach>

            <!-- /.box-body -->
          </div>
          <!-- /.box -->

        </div>
       
            
    </div> 
    </div>
</div>  
    <script>
              $(function() {
    $('#profile-image1').on('click', function() {
        $('#profile-image-upload').click();
    });
});       
              </script> 
     
       
   </div>
</div>


</form>

 
</body>
<%@include file="/WEB-INF/Views/Shared/footer.jsp" %>
</html>