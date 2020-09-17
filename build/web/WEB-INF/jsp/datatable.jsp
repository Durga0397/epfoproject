<%-- 
    Document   : datatable.jsp
    Created on : 28 Feb, 2020, 12:15:11 PM
    Author     : amolw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Below are the Style Sheets required for Data Tables. These can be customized as required -->
      
<link rel="stylesheet" type="text/css" href="css/db_site_ui.css">
<link rel="stylesheet" type="text/css" href="css/demo_table_jui.css">
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
 
<!-- Below is the jQuery file required for using any Jquery component. -->
<!--<script type="text/javascript" src="js/jquery-1.11.3.js"></script>-->
 
<!-- Below are the jQuery scripts required for Data Tables. -->
<!--<script type="text/javascript" src="js/jquery.dataTables.min.js"></script>-->
<!-- <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>-->
<!-- Initialization code of data table at the time of page load. -->
<!--<link rel="stylesheet" type="text/css" href="//cdn.datatables.net/1.10.12/css/jquery.dataTables.min.css" />
<script src="//cdn.datatables.net/1.10.12/js/jquery.dataTables.min.js"></script>-->

 <script
            src="https://code.jquery.com/jquery-3.4.1.js"
            integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>
        <!--<script src="https://unpkg.com/browse/jquery@3.3.1/dist/jquery.min.js"></script>-->
        <script type="text/javascript" src="https://cdn.datatables.net/v/dt/dt-1.10.20/datatables.min.js"></script>
<script>
	$(document).ready( function () {
            $('#myTable').DataTable();
//            var data = $('#myDataTable').DataTable().rows.data();
            });
//	$(document).ready(function(){ $('#myTable').DataTable(); });		
		
		
	
</script>
    </head>
    <body>
        
	<h3>The Datatable is loaded.</h3>
	<div style="width: 80%">
		<!-- Below table will be displayed as Data table -->
		<table id="myDatatable" class="display datatable">
			<thead>
				<tr>
					<th>pan</th>
					<th>name</th>
					<th>address</th>
                                        <th>DOB</th>
				</tr>
			</thead>
			<tbody>
				 Iterating over the list sent from Controller 
				<c:forEach items="${list}" var="l"  >
					<tr>
						
                                                <td>${l.PAN}</td>
						<td>${l.name}</td>
						<td>${l.address}</td>
                                                <td>${l.DOB}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
    </body>
</html>
