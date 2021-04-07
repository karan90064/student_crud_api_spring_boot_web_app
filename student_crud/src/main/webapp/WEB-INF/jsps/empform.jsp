<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  

    <h1>Add New Student</h1>
       <form method="post" action="saveStudent">
        <table > 
         <tr>  
          <td>Id : </td> 
          <td><input type="text" name="id" /></td>
         </tr> 
         <tr>  
          <td>Name : </td> 
          <td><input type="text" name="name" required /></td>
         </tr>  
         <tr>  
          <td>Course :</td>  
          <td><input type="text" name="scourse" /></td>
         </tr> 
         <tr>  
          <td>Feee :</td> 
          <td><input type="numeric" name="sfee" /></td> 
         </tr>

         <tr>  
          <td>Adress : </td> 
          <td><input type="text" name="saddress" /></td>
         </tr> 
         <tr>  
          <td>Contact : </td> 
          <td><input type="numeric" name="scontact_details" pattern="[0-9]{10}" placeholder="should be 10 numeric digits"/></td>
         </tr>
         <tr>  
          <td>Birth Date :</td>  
          <td><input type="date" name="sbirthdate" value="1996-10-11"
       min="1990-01-01" max="2018-01-01"/></td>
         </tr> 
         <tr>  
          <td>Class :</td> 
          <td><input type="number" name="sclass" min="1" max="12" required/></td> 
         </tr> 
         <tr>  
          <td>Roll no : </td> 
          <td><input type="numeric" name="sroll_no"  required/></td>
         </tr> 
         <tr>  
          <td>Parent detaisl : </td> 
          <td><input type="text" name="sparents_details" /></td>
         </tr>  
         <tr>  
          <td>Grade :</td>  
          <td><input type="text" name="sgrade" /></td>
         </tr> 
         <tr>  
          <td>Marks :</td> 
          <td><input type="number" name="smarks" min="0" max="100"/></td> 
         </tr> 


         <tr>  
          <td> </td>
          <td><input type="submit" value="Save" /></td>  
         </tr>  
        </table>  
       </form>  
       <a href="getStudents">View all Studentst</a>
