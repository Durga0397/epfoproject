
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
        <style>
table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
  color: red;
}

tr:hover {background-color:#f5f5f5;}
div {
 
 
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}

</style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login form</title>
    </head>
    <body>
        <div>
        <h3 align="center" style="color: blue">Login</h3>
        <h4>${requestScope.mesg}</h4>
        <form action="login" method="post" modelAttribute="user">
            <table style="with: 50%">
                <tr>
                    <td> Username</td>
                    <td><input type="text" name="name"  path="name" required/></td>
                </tr>

                <tr>
                    <td>address</td>
                    <td>
                        <label for="cars"></label>

<select name="cars" id="cars">
  <option value="volvo">select city</option>
  <option value="saab">Saab</option>
  <option value="mercedes">Mercedes</option>
  <option value="audi">Audi</option>
</select>
                        
                    </td>
                </tr>
                 <tr>
                    <td>password</td>
                    <td><input type="password" name="password" path="passwod" required/></td>
                </tr>
                
             
            </table>
            <br>
            <div align="center" style="cursor: pointer">
            <input type="Submit" style="cursor: pointer" value="Login" /></form>
</div>
    </body>
</html>