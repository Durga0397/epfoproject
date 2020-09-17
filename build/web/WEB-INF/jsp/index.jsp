<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <head>
        <style>
            div{
                height: 500px ;
                width: 500px;

            }
            #img{
                height: 5;
                width: 5;
            }
            body {
                background: #555;
                max-width: 500px;
                margin: auto;
                background-image: url("image.jpg");
                padding: 50px;
            }
            a{
                text-decoration: none; 
            }

            .content {
                max-width: 300px;
                max-height: 300px;
                margin: auto;
                background: white;
                padding: 50px;

            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome to Spring Web MVC project</title>
    </head>

    <body >
        

        <div class="content" align="center" >
            <a href="get">Register</a><br><br>
             <a href="update">update</a><br><br>


            <a href="login">Login</a><br><br>

            <a href="list">List of Users</a>
            
        </div>

        <img src='<c:url value="/image/paper.jpg"></c:url>' alt="test" height="50" width="50">

    </body>
</html>
