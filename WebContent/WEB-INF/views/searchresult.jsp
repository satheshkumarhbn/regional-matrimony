<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<%-- <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Regional Matrimony- Search Result</title>
<meta name="description" content="Regional Matrimony Admin Portal">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="<c:url value="resources/assets/css/lib/datatable/dataTables.bootstrap.min.css"/>" >
<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
</head>
<body>
	<jsp:include page="dashboard.jsp"></jsp:include>
	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">
	<!-- breadcrump start -->
		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title">
								<h1>Search Result</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li class="active">Search Result</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- breadcrump end -->
		<div class="content">
			<div class="animated fadeIn">
				<div class="row">
				<div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                                <strong class="card-title">Search Result</strong>
                            </div>
                            <div class="card-body">
                                <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Member Id</th>
                                            <th>Name</th>
                                            <th>Mobile Number</th>
                                            <th>Father's Name</th>
                                            <th>Star</th>
                                            <th>Raasi</th>
                                            <th>View</th>
                                        </tr>
                                    </thead>
                                    <c:forEach var="result" items="${searchresult }">
                                    <tbody>
                                        <tr>
                                            <td><c:out value="${result.memberId }"/></td>
                                            <td><c:out value="${result.firstName }"/></td>
                                            <td><c:out value="${result.mobileNumber }"/></td>
                                            <td><c:out value="${result.fathersName}"/></td>
                                            <td><c:out value="${result.star}"/></td>
                                            <td><c:out value="${result.raasi}"/></td>
                                            <tag:url value = "/viewProfile/${result.memberId}" var = "urlviewuser" />
                                            <td><button type="button" onclick="${urlviewuser}" class="btn btn-danger"><i class="fa fa-arrow-circle-o-right"></i>&nbsp; View</button></td>
                                        </tr>
                                    </tbody>
                                    </c:forEach>
                                </table>
                            </div>
                        </div>
                    </div>
				</div>
			</div>
		</div>
	</div>
	<script src="resources/assets/js/lib/data-table/datatables.min.js"></script>
    <script src="resources/assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="resources/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="resources/assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="resources/assets/js/lib/data-table/jszip.min.js"></script>
    <script src="resources/assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="resources/assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="resources/assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="resources/assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="resources/assets/js/init/datatables-init.js"></script>


    <script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
      } );
  </script>
</body>
</html>