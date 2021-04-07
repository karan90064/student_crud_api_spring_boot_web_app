<!-- <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>   -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

		<h1>Edit Student</h1>
       <form method="post" action="editStudentRecord">  
      	<table >  
      	<tr>  
          <td></td> 
          <td><input type="hidden" name="id" value="${student.id}"/></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><input type="text" name="name" value="${student.name}" required/></td>
         </tr>  
         <tr>  
          <td>Course :</td>  
          <td><input type="text" name="scourse" value="${student.scourse}"/></td>
         </tr> 
         <tr>  
          <td>Feee :</td> 
          <td><input type="numeric" name="sfee" value="${student.sfee}"/></td> 
         </tr> 
         <tr>  

          <tr>  
          <td>Adress : </td> 
          <td><input type="text" name="saddress" value="${student.saddress}"/></td>
         </tr>  
         <tr>  
          <td>Contact :</td>  
          <td><input type="numeric" name="scontact_details" pattern="[0-9]{10}" placeholder="should be 10 numeric digits"  value="${student.scontact_details}"/></td>
         </tr> 
         <tr>  
          <td>Birth Date :</td> 
          <td><input type="date" name="sbirthdate" value="1996-10-11"
       min="1990-01-01" max="2018-01-01" value="${student.sbirthdate}"/></td> 
         </tr> 
         <tr>  
          <tr>  
          <td>Class : </td> 
          <td><input type="number" name="sclass" min="1" max="12" value="${student.sclass}" required/></td>
         </tr>  
         <tr>  
          <td>Roll no :</td>  
          <td><input type="numeric" name="sroll_no" value="${student.sroll_no}" required/></td>
         </tr> 
         <tr>  
          <td>Parent detaisl :</td> 
          <td><input type="text" name="sparents_details" value="${student.sparents_details}"/></td> 
         </tr> 
         <tr>  
          <tr>  
          <td>Grade : </td> 
          <td><input type="text" name="sgrade" value="${student.sgrade}"/></td>
         </tr>  
         <tr>  
          <td>Marks :</td>  
          <td><input type="number" name="smarks" min="0" max="100" value="${student.smarks}"/></td>
         </tr> 


          <td> </td>
          <td><input type="submit" value="update" /></td>  
         </tr>  
        </table>  
       </form>  
       <a href="getStudents">View all Students</a>
