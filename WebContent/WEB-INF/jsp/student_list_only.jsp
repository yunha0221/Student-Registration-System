
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <meta charset="utf-8">
  		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="styles/jsp.css" type="text/css"/>
        <title>Student List</title>
    </head>
    <body>
        <div id="list_box">
            <h1>Registered Students</h1>
            <table class="table table-striped">
                <tr>
                    <th>Count</th>
                    <th>Name</th>  
                    <th>Email</th>
                    <th>Program</th>
                    <th>Year</th>
                </tr>
                
                <c:forEach var="s" items="${students}" varStatus="status">
                	<c:if test="${s.share}">
	                    <tr>
	                        <td>${status.count}</td>
	                        <td>${s.name}</td>
	                        <td>${s.email}</td>
	                        <td>${s.program}</td>
	                        <td>${s.year}</td>                 
	                    </tr>
                    </c:if>
                </c:forEach>
                
            </table>
            <p><a href="student?action=logout">Log out</a></p>
            <p><a href="./">Back to Index</a></p>
        </div>
    </body>
</html>
