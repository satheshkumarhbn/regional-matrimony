<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="tag" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
		<div class="position-relative">
      <!-- Hero for FREE version -->
      <section class="section section-lg section-hero section-shaped">
        <!-- Background circles -->
        <div class="shape shape-style-1 shape-primary">
          <span class="span-150"></span>
          <span class="span-50"></span>
          <span class="span-50"></span>
          <span class="span-75"></span>
          <span class="span-100"></span>
          <span class="span-75"></span>
          <span class="span-50"></span>
          <span class="span-100"></span>
          <span class="span-50"></span>
          <span class="span-100"></span>
        </div>
        <div class="container py-md">
			<div class="row row-grid justify-content-between align-items-center">
				<div class="col-lg-6">
					<h3 class="display-3 text-white">
						NextGen Matrimonial Portal <span class="text-white">New way of MatchMaking</span>
					</h3>
					<p class="lead text-white">The Design System comes with four
						pre-built pages to help you get started faster. You can change the
						text and images and you're good to go. More importantly, looking
						at them will give you a picture of what you can built with this
						powerful Bootstrap 4 Design System.</p>
					<div class="btn-wrapper">
						<a href="./examples/login.html" class="btn btn-success">About Us</a> <a href="./examples/register.html" class="btn btn-white">Success Stories</a>
					</div>
				</div>
				<div class="col-lg-5 mb-lg-auto">
					<div class="transform-perspective-right">
						<div class="card bg-secondary shadow border-0">
							<div class="card-body px-lg-5 py-lg-5">
								<div class="text-center text-muted mb-4">Advanced Search
								</div>
								<form role="form" action="memberLogin" method="post">
									<div class="form-group mb-3">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-italic"></i></span>
											</div>
											<input class="form-control" placeholder="member id" type="text" name="memberid" id="memberid">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-mobile"></i></span>
											</div>
											<input class="form-control" placeholder="mobile number"
												type="text" name="mobilenumber" id="mobilenumber">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-user"></i></span>
											</div>
											<input class="form-control" placeholder="first name"
												type="text" name="firstname" id="firstname">
											<input class="form-control" placeholder="last name"
												type="text" name="lastname" id="lastname">
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-laptop"></i></span>
											</div>
											<select class="form-control">
											  <option value="volvo">profession</option>
											  <option value="engineer">Engineer</option>
											  <option value="doctor">Doctor</option>
											  <option value="lawyer">Lawyer</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-font"></i></span>
											</div>
											<select class="form-control" name="age" id="age">
											  <option value="volvo">age</option>
											  <option value="19-20">19-20</option>
											  <option value="21-22">21-22</option>
											  <option value="23-24">23-24</option>
											  <option value="25-26">25-26</option>
											  <option value="27-28">27-28</option>
											  <option value="29-30">29-30</option>
											  <option value="31-32">31-32</option>
											  <option value="33-34">33-34</option>
											  <option value="35-36">35-36</option>
											  <option value="37-38">37-38</option>
											  <option value="39-above">39&above</option>
											</select>
										</div>
									</div>
									<div class="form-group">
										<div class="input-group input-group-alternative">
											<div class="input-group-prepend">
												<span class="input-group-text"><i
													class="fa fa-star-half-o"></i></span>
											</div>
											<select class="form-control">
											  	<option value="volvo">Star</option>
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
											<select class="form-control">
											  	<option value="volvo">Raasi</option>
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
									</div>
									<div class="text-center">
										<button type="submit" class="btn btn-primary my-4">Sign
											in</button>
									</div>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        <!-- SVG separator -->
        <div class="separator separator-bottom separator-skew zindex-100">
          <svg x="0" y="0" viewBox="0 0 2560 100" preserveAspectRatio="none" version="1.1" xmlns="http://www.w3.org/2000/svg">
            <polygon class="fill-white" points="2560 0 2560 100 0 100"></polygon>
          </svg>
        </div>
      </section>
    </div>
	</main>
	<jsp:include page="footer.jsp"></jsp:include>
	
</body>
</html>