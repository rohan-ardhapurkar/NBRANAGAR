<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<title>Business Register Form</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/style.css">

<script type="text/javascript">
$(function() {
	$('#saveForm').click(function() {
		debugger
		document.registerCompany.action ="";
		document.registerCompany.method = "POST";
		document.registerComapny.submit();
	})
});
</script>
</head>
<body>
	<h3 class="head">
		<strong><u>Annexure-M</u></strong>
	</h3>
	<h3 class="head">
		<strong><u>Business Register Schedule</u></strong>
	</h3>
	<h4 class="head">(For Establishments Register Under 7
		Acts/Registering Authorities)</h4>
	<br>
	<div class="container" id="wrap">
		<form name="registerCompany" method="POST" id="registerCompany">
			<legend style="text-align: center;">SECTION I:
				IDENTIFICATION PARTICULARS(2011 Census codes should be adopted)</legend>
			<br>
			<fieldset>
				<h1 class="col-md-3"></h1>
				<label class="col-md-2">State:</label> <input class="col-md-3 code"
					type="tel" maxlength="2" placeholder="code" name="state" id="state"
					style="margin-right: 25px;" required> <input
					class="col-md-3 inp" type="text" id="state_name"> <br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-2">District:</label> <input
					class="col-md-3 code" type="tel" maxlength="3" placeholder="code"
					name="district" id="district" style="margin-right: 25px;" required>
				<input class="col-md-3 inp" type="text" id="district_name"><br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-2">Tehsil/Taluka:</label> <input
					class="col-md-3 code" type="tel" maxlength="5" placeholder="code"
					name="taluka" id="taluka" style="margin-right: 25px;" required>
				<input class="col-md-3 inp" type="text" id="taluka_name"> <br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-2">Town/Village:</label> <input
					class="col-md-3 code" type="tel" maxlength="6" placeholder="code"
					style="margin-right: 25px;" name="village" id="village" required>
				<input class="col-md-3 inp" type="text" id="village_name"> <br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-2">Ward(only for Town):</label> <input
					class="col-md-3 code" type="tel" maxlength="4" placeholder="code"
					style="margin-right: 25px;" name="state" id="state" required>
				<input class="col-md-3 inp" type="text"> <br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-5">Population Census 2011 Enumeration
					Block:</label> <input class="col-md-3 code" placeholder="code" type="tel"
					style="margin-right: 25px;" name="state" id="state" required>
				<input class="col-md-3 inp" type="text"> <br>
				<br>
			</fieldset>
			<br>
			<br>

			<legend style="text-align: center; font-size: 25px;">Section
				II: Information on Directory of Establishments</legend>
			<br>
			<h4 style="text-align: center;">
				<strong>Choose the type of office</strong>
				</h5>
				<br>
				<h1 class="col-md-3"></h1>
				<h1 class="col-md-2"></h1>
				<label>Branch Office</label>&nbsp; <input type="radio" name="br_o"
					value="branch"> &nbsp; &nbsp;&nbsp;&nbsp; <label>Main
					Office</label>&nbsp; <input type="radio" name="main_o" value="main"><br>
				<br>

				<fieldset>
					<legend>Marathi</legend>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Name:</label> <input class="col-md-3"
						type="text" name="name" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Address: H-No:</label> <input
						class="col-md-3" type="text" name="address" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Lane/Street:</label> <input
						class="col-md-3" type="text" name="street" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Locality:</label> <input class="col-md-3"
						type="text" name="locality" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Pincode:</label> <input class="col-md-3"
						type="tel" maxlength="6" name="pincode" id="pincode" required><br>
					<br>

					<legend>English</legend>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Name:</label> <input class="col-md-3"
						type="text" name="name" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Address: H-No:</label> <input
						class="col-md-3" type="text" name="address" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Lane/Street:</label> <input
						class="col-md-3" type="text" name="street" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Locality:</label> <input class="col-md-3"
						type="text" name="locality" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Pincode:</label> <input class="col-md-3"
						type="tel" maxlength="6" name="pincode" id="pincode1" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Tel/Mobile No:</label> <input
						class="col-md-3" type="tel" maxlength="10" name="Mobile" id="mob"
						required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">Email:</label> <input class="col-md-3"
						type="Email" name="Email" id="email" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">PAN:</label> <input class="col-md-3"
						type="tel" maxlength="10" name="pan" id="pan" required><br>
					<br>
					<h1 class="col-md-3"></h1>
					<label class="col-md-3">TAN:</label> <input class="col-md-3"
						type="tel" maxlength="10" name="tan" id="tan" required><br>
					<br>
				</fieldset>
				<br>
				<br>

				<legend style="text-align: center; font-size: 25px;">Other
					Information</legend>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-3">NIC-2008 Code:</label> <input
					class="col-md-3 code" type="tel" maxlength="3" name="nic" id="nic"
					style="margin-right: 25px;" required> <input
					class="col-md-3 inp" type="text"><br>
				<br> <br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-3">Year of starting of operation(Under
					current ownership):</label> <input class="col-md-3 inp" type="year"
					name="year" required><br>
				<br>
				<br>
				<h1 class="col-md-1"></h1>
				<label class="col-md-3">Ownership Code:</label> <input
					class="col-md-3 inp" type="tel" name="ownership" id="ownership"
					required><br>
				<br>
				<br>
				<h1 class="col-md-3"></h1>
				<label class="col-md-3">Total No. of person employed on the
					last working day of the visit:</label> <input class="col-md-3 inp"
					type="tel" name="employ" required><br>
				<br>
				<br>
				<br>
				<br>


				<legend style="text-align: center; font-size: 24px;">Enter
					the registration number whichever is applicable</legend>
				<br>
				<h1 class="col-md-3"></h1>
				<div class="dropup col-md-3">
					<button class="btn btn-active dropdown-toggle" type="button"
						data-toggle="dropdown">
						Choose the registration type <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">Companies Act, 1956</a></li>
						<li><a href="#">Factories Act, 1948</a></li>
						<li><a href="#">Shops and Commercial Establishment Act,
								1948</a></li>
						<li><a href="#">Societies Registration Act, 1860</a></li>
						<li><a href="#">Cooperative Societies Act, 1960</a></li>
						<li><a href="#">Khadi and Village Industries Board</a></li>
						<li><a href="#">Directorate of Industries(District
								Industries Centre)</a></li>
					</ul>
				</div>
				<input type="number" name="reg_no" id="reg_no" class="col-md-3"
					style="margin-bottom: 30px;"> <br>
				<br> <input type="submit" value="Submit" onclick="ckl()"
					class="btn btn-success" id="saveForm"
					style="margin-left: 550px; margin-bottom: 20px; width: 130px; height: 45px; font-size: 20px; font-weight: 570">
		</form>
	</div>



	<script>
		$('#state').on('input', function() {
			var state1 = $("#state").val();
			$.get('MainServlet?id=' + state1 + '&type=state', function(data) {
				$("#state_name").val(data);
			});

		});
		$('#district').on(
				'input',
				function() {
					var state1 = $("#district").val();
					$.get('MainServlet?id=' + state1 + '&type=district',
							function(data) {
								$("#district_name").val(data);
							});
				});
		$('#taluka').on('input', function() {
			var state1 = $("#taluka").val();
			$.get('MainServlet?id=' + state1 + '&type=taluka', function(data) {
				$("#taluka_name").val(data);
			});

		});
		$('#village').on('input', function() {
			var state1 = $("#village").val();
			$.get('MainServlet?id=' + state1 + '&type=village', function(data) {
				$("#village_name").val(data);
			});

		});

		function ckl() {
			var state = document.getElementById("state");
			var dist = document.getElementById("dist");
			var tal = document.getElementById("tal");
			var town = document.getElementById("town");
			var ward = document.getElementById("ward");
			var pincode = document.getElementById("pincode");
			var pincode1 = document.getElementById("pincode1");
			var mob = document.getElementById("mob");
			var pan = document.getElementById("pan");
			var tan = document.getElementById("tan");
			var nic = document.getElementById("nic");
			var reg_no = document.getElementById("reg_no");

		}
	</script>
	<script>
		function validateForm() {
			var name = document.getElementByName("name");
			var address = document.getElementByName("adress");
			var street = document.getElementByName("street");
			var locality = document.getElementByName("locality");
			var pin = document.getElementByName("pincode");
			var mobile = document.getElementByName("mobile");
			var email = document.getElementByName("email");
			var permanantNo = document.getElementByName("pan");
			var taxNo = document.getElementByName("tan");
			var nic1 = document.getElementByName("nic");
			var year = document.getElementByName("year");
			var employ = document.getElementByName("employ");
			var ownership = document.getElementByName("ownership");
	</script>
</body>
.....................................................................
