<%--
    Document   : show
    Created on : 28 Feb, 2020, 9:52:24 AM
    Author     : raunaqs
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css"/>
    </head>
    <body>

        
        
        
        <div class="container">
            <div class="jumbotron">
                <table class="table" id="myTable">
                    <thead>

                    <th>
                        PAN
                    </th>
                    <th>
                        NAME
                    </th>
                    <th>
                        ADDRESS
                    </th>
                    <th>
                        DOB
                    </th>
                    <th>
                        UPDATE
                    </th>
                     <th>
                        DELETE
                    </th>
                    </thead>
                    <tbody>
                        <c:forEach items="${list}" var="d">
                            <tr>                              
                                <td>
                                    ${d.PAN}
                                </td>
                                <td>
                                    ${d.name}
                                </td>
                                <td>
                                    ${d.address}
                                </td>
                                <td>
                                    ${d.DOB}
                                </td>
                                <td>
                                    <a href="update?userId=${d.id}">EDIT</a>
                                   
                                </td>
                                 <td>
                                    <a href="delete?userId=${d.id}">DELETE</a>
                                   
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
<!--        <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
        <script src="https://unpkg.com/browse/jquery@3.3.1/dist/jquery.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
        <script>
            $(document).ready(function () 
            {
                $('#myTable').DataTable();
            });
            
            
            
        </script>-->
         <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>

        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.css"/>

        <script type="text/javascript" src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/dataTables.buttons.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.flash.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.html5.min.js"></script>
        <script type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.1/js/buttons.print.min.js"></script>


        <script>
            $(document).ready(() => {
                $('#myTable').DataTable({dom: 'Bfrtip',
                buttons: [
                        'copy', 'csv', 'excel', 'pdf', 'print',{exportOptions: {
                                                                                  columns: [1,2,3,4]
                                                                              }}
                ]});
                
            })
        </script>


    </body>
</html>
