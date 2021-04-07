    <!-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   -->

    <!-- To use jstl tags we add this taglib -->
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

	<h1>Student List</h1>
	<table border="2" width="70%" cellpadding="2">
	<tr><th>Id</th><th>Name</th><th>Course</th><th>Fee</th><th>Adress</th><th>Contact</th><th>Birth Date</th><th>Class</th><th>Roll no</th><th>Parent detaisl</th><th>Grade</th><th>Marks</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="student" items="${students}"> 
    <tr>
    <td>${student.id}</td>
    <td>${student.name}</td>
    <td>${student.scourse}</td>
    <td>${student.sfee}</td>

    <td>${student.saddress}</td>
    <td>${student.scontact_details}</td>
    <td>${student.sbirthdate}</td>
    <td>${student.sclass}</td>
    <td>${student.sroll_no}</td>
    <td>${student.sparents_details}</td>
    <td>${student.sgrade}</td>
    <td>${student.smarks}</td>

    <td><a href="editStudent?id=${student.id}">Edit</a></td>
    <td><a href="deleteStudent?id=${student.id}">Delete</a></td>
    </tr>
    </c:forEach>
    </table>
    <br/>
    <a href="createStudent">Add New Student</a>