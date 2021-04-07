    <!-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>Student List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Course</th><th>Fee</th></tr>
    <c:forEach var="student" items="${students}"> 
    <tr>
    <td>${student.id}</td>
    <td>${student.name}</td>
    <td>${student.scourse}</td>
    <td>${student.sfee}</td>
    <!-- <td><a href="editemp/${emp.id}">Edit</a></td>
    <td><a href="deleteemp/${emp.id}">Delete</a></td> -->
    </tr>
    </c:forEach>
    </table>
    <br/>
    <!-- <a href="empform">Add New Employee</a> -->