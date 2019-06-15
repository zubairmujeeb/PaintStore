<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<!-- <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

 <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
 <link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link href="resources/css/MenuStyling.css" rel="stylesheet"  >

<title>Insert title here</title>
</head>
<body>

<%@include file="./Shared/Navbar.jsp" %>

<div class="container">
    
   
    <div class="row">
       <c:forEach var="user" items="${paint}">
        <div class="col-xs-12 col-sm-4">
        
            <div class="card">
           
                <a class="img-card" href="http://www.fostrap.com/">
                    <img src="${user.logourl}"/>
                </a>
                <br />
                <div class="card-content">
                    <h4 class="card-title">
                        <a href="http://www.fostrap.com/">
                           ${user.name}
                        </a>
                    </h4>
                    <div class="">
                       ${user.description }
                    </div>
                </div>
                <div class="card-read-more">
                    <a class="btn btn-link btn-block" href="./showpage?id=${user.id }" >
                        See More
                    </a>
                </div>
            
            </div>
          
        </div>
               </c:forEach>
        </div>
         
    </div>
  






 <%-- <table style="border: 1px solid;">
   <!-- iterate over the collection using forEach loop -->
   <tr>
   <th>Name</th>
   <th>Description</th>
   <th>Price</th>
   <th>Actions</th>
   <th>Actions</th>
   
   </tr>
   <c:forEach var="user" items="${paint}">
   
   <c:url var="updateLink" value="/edit" >
   <c:param name="ids" value="${user.id }" />
   
   </c:url>
   <c:url var="updateLinkdelete" value="/delete" >
   <c:param name="ids" value="${user.id }" />
   
   </c:url>
       <!-- create an html table row -->
       
       <tr>
       <td>${user.name}</td> 
       <td> ${user.description }</td>
       <td> ${user.price }</td>
       <td> ${user.id }</td>
       
       <td> <a href="${updateLink}">Edit</a></td>
       <td> <a href="${updateLinkdelete }">Delete</a></td>
       <td> ${user.painttype }</td>
       
       </tr>
       <!-- close the loop -->
   </c:forEach>
   <!-- close table -->
   </table> --%>
<%@include file="./Shared/footer.jsp" %>
</body>
</html>