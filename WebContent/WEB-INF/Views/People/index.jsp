<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap4.min.css" >
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<title>Insert title here</title>

</head>
<body>

<%@include file="/WEB-INF/Views/Shared/Navbar.jsp" %>
<br>


<img height="300px" width="99%" alt="" src="resources/images/Untitled design (1).jpeg">
<br>
<br>
<table id="example" class="table table-striped table-bordered" style="width:100%">
        <thead>
            <tr>
            
                <th>Name</th>
                <th>phonenumber</th>
                <th>isAvailable</th>
                <th>Adress</th>
                <th>skills</th>
                <th>experience</th>
            </tr>
        </thead>
        
        <tbody>
    <c:forEach var="user" items="${paint}" >
            <tr>
                <td>
                <a href="./Showdetails?id=${user.id }" var="updateLinkdelete" value > ${user.name}</a>
            <%--   <c:param name="ids" value="${user.id }" /> --%>
                </td>
                <td>${user.phonenumber}</td>
                <td>${user.isAvailable}</td>
               <td>${user.adress}</td>
                <td>${user.skills}</td>
                <td>${user.experience}</td>
            </tr>
              </c:forEach>
        </tbody>
      
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Position</th>
                <th>Office</th>
                <th>Age</th>
                <th>Start date</th>
                <th>Salary</th>
            </tr>
        </tfoot>
    </table>
    
     <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js"></script>
</body>
<%@include file="/WEB-INF/Views/Shared/footer.jsp" %>
<script type="text/javascript">

$(document).ready(function() {
    $('#example').DataTable();
} );

</script>

</html>