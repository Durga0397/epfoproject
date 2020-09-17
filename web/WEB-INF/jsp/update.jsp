<%-- 
    Document   : update
    Created on : 4 Mar, 2020, 10:59:50 AM
    Author     : sfalk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
 
  </script>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
        
    </head>
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <body>
        <h4>${requestScope.mesg}</h4>
        <h4>${requestScope.User}</h4>
        
         <form action="updateUser" method="post" modelAttribute="user">
        <legend>UPDATE DETAILS</legend>
    
        
        
        <table class="table table-hover">
            <tr>
                
                <td><input type="hidden" name="id"  path="id" value="${User.id}"/></td>
            </tr>

            <tr>
                <td>NAME</td>
                <td><input type="text" name="name"  path="name" value="${User.name}"/></td>
            </tr>

            <tr>
                <td>ADDRESS</td>
<!--                <td><input type="text" name="address" path="address" value="${User.address}"/></td>-->
                 <td>  <label for="address"></label>

<select name="address" id="address" path="address" value="${User.address}">
  <option value="SATARA">SATARA</option>
  <option value="PUNE">PUNE</option>
  <option value="KOLHAPUR">KOLHAPUR</option>
  <option value="BARAMATI">BARAMATI</option>
</select>
                    </td>
            </tr>
            
             <tr>
                <td> PAN</td>
                <td><input type="text" name="PAN"  path="PAN" value="${User.PAN}" /></td>
            </tr>

            <tr>
                <td>DOB</td>
                <td><input type="text" id="datepicker" name="DOB" path="DOB" placeholder="dd/mm/yyyy"/></td>
            </tr>
        </table>
        
        
    
        <button type="submit" class="btn btn-primary">UPDATE</button>
    </form>
    
    </body>
</html>
