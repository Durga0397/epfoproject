
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <style>
table {
  border-collapse: collapse;
  width: 100%;
}
    body  {
  background-image: url("paper.gif");
  background-color: #cccccc;

}
div {
 
 
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}


th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  color: red;
}

tr:hover {background-color:#f5f5f5;}


</style>


</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Registration Form</title>
    </head>
    <body>
        <div>
        <h1 align="center" style="color: blue"> Registration Form</h1>
        <form action="get" method="post" modelAttribute="user">
            <table style="with: 50%">
                <tr>
                    <td> name</td>
                    <td><input type="text" name="name"  path="name" required  max="6"/></td>
                </tr>

                <tr>
                    <td>address</td>
                    <td><input type="text" name="address" path="address" required/></td>
                </tr>
                
                 <tr>
                    <td> PAN</td>
                    <td><input type="text" name="PAN"  path="PAN" required/></td>
                </tr>

                <tr>
                    <td>DOB</td>
                    <td><input type="text" name="DOB" path="DOB" required placeholder="dd/mm/yyyy"/></td>
                </tr>
                <tr>
                    <td>PASSWORD</td>
                    <td><input type="password" name="password" path="password" required/></td>
                </tr>
            </table>
            <br>
            <div align="center">
                        <input type="Submit" style="cursor: pointer"  value="Save" />

            </form>
</div>
    </body>
</html>