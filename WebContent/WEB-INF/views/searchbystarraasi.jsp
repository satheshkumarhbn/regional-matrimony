<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><%-- 
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>  --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Regional Matrimony- Search By Mobile Number</title>
<meta name="description" content="Regional Matrimony Admin Portal">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
<link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">
</head>
<body>
	<jsp:include page="dashboard.jsp"></jsp:include>
	<!-- Right Panel -->
	<div id="right-panel" class="right-panel">
		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title">
								<h1>Search By Star & Raasi</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Dashboard</a></li>
									<li class="active">Search By Star & Raasi</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="content">
			<div class="animated fadeIn">
				<div class="col-lg-6">
					<div class="card">
						<div class="card-header">
							<strong>Search By</strong>Star & Raasi
						</div>
						<div class="card-body card-block">
							<form action="searchByStarRaasi" method="post"
								class="form-horizontal">
								<div class="form-group">
									<label for="member" class="px-1  form-control-label">Groom/Bride</label>
									<select name="member" id="member" class="form-control">
										<option value="groom">Groom</option>
										<option value="bride">Bride</option>
									</select>
								</div>
								<div class="form-group">
									<label for="star" class="pr-1  form-control-label">Star</label>
									<select name="star" id="star" class="form-control">
										<option value="ashvini">Ashvini</option>
										<option value="bharani">Bharani</option>
										<option value="karthigai">Karthigai</option>
										<option value="rohini">Rohini</option>
										<option value="mirukaseerisham">Mirukaseerisham</option>
										<option value="thiruvathirai">Thiruvathirai</option>
										<option value="punarpusam">Punarpusam</option>
										<option value="poosam">Poosam</option>
										<option value="ayilyam">Ayilyam</option>
										<option value="maham">Maham</option>
										<option value="pooram">Pooram</option>
										<option value="uthiram">Uthiram</option>
										<option value="hashtham">Hashtham</option>
										<option value="sithirai">Sithirai</option>
										<option value="swathi">Swathi</option>
										<option value="visakam">Visakam</option>
										<option value="anusham">Anusham</option>
										<option value="kettai">kettai</option>
										<option value="moolam">Moolam</option>
										<option value="pooradam">Pooradam</option>
										<option value="uthiradam">Uthiradam</option>
										<option value="thiruvonam">Thiruvonam</option>
										<option value="avittam">Avittam</option>
										<option value="sathayam">Sathayam</option>
										<option value="pooratathi">Pooratathi</option>
										<option value="uthiratathi">Uthiratathi</option>
										<option value="revathi">Revathi</option>
									</select>
								</div>
								<div class="form-group">
									<label for="raasi" class="px-1  form-control-label">Email</label>
									<select name="raasi" id="raasi" class="form-control">
										<option value="mesham">Mesham</option>
										<option value="rishabam">Rishabam</option>
										<option value="mithunam">Mithunam</option>
										<option value="kadakam">Kadakam</option>
										<option value="simmam">Simmam</option>
										<option value="kanni">Kanni</option>
										<option value="thulam">Thulam</option>
										<option value="viruchikam">Viruchikam</option>
										<option value="dhanusu">Dhanusu</option>
										<option value="makaram">Makaram</option>
										<option value="kumbam">Kumbam</option>
										<option value="meenam">Meenam</option>
									</select>
								</div>
								<button type="submit"
									class="btn btn-outline-success btn-lg btn-block">Search</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>