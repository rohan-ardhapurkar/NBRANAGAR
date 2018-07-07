<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
	<title>Business Register Form</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">

</head>
<body>
	<h3 class="head">
		<strong><u>Annexure-M</u></strong>
	</h3>
	<h3 class="head">
		<strong><u>Business Register Schedule</u></strong>
	</h3>
  <h4 class="head">(For Establishments Register Under 7 Acts/Registering Authorities)</h4><br>
  <div class="container" id="wrap">
    <form>
      <legend style="text-align: center;">SECTION I: IDENTIFICATION PARTICULARS(2011 Census codes should be adopted)</legend><br>
      <fieldset>
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">State:</label>
        <input class="col-md-3 code" type="tel" name="state" id="state" style="margin-right: 25px;">
        <input class="col-md-3 inp" type="text" > <br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">District:</label>

        <input class="col-md-3 code" type="tel" name="state" id="state" style="margin-right: 25px;">
        <input class="col-md-3 inp" type="text"><br><br> 
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">Tehsil/Taluka:</label>
        <input class="col-md-3 code" type="tel" name="state" id="state" style="margin-right: 25px;">
        <input class="col-md-3 inp" type="text">  <br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">Town/Village:</label>
        <input class="col-md-3 code" type="tel" style="margin-right: 25px;" name="state" id="state">
        <input class="col-md-3 inp" type="text" > <br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">Ward(only for Town):</label>
        <input class="col-md-3 code" type="tel"  style="margin-right: 25px;" name="state" id="state">
        <input class="col-md-3 inp" type="text"> <br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-2">Population Census 2011 Enumeration Block:</label>
        <input class="col-md-3 code" type="tel" style="margin-right: 25px;" name="state" id="state">
        <input class="col-md-3 inp" type="text"> 
        <br><br>
      </fieldset><br><br>

      <legend style="text-align: center; font-size: 25px;">Section II: Information on Directory of Establishments</legend><br>
      <h4 style="text-align: center;"><strong>Choose the type of office</strong></h5><br>
       <h1 class="col-md-3"></h1>
       <h1 class="col-md-2"></h1>
       <label >Branch Office</label>&nbsp;
       <input type="radio" name="Br_o"> &nbsp; &nbsp;&nbsp;&nbsp;
       <label>Main Office</label>&nbsp;
       <input type="radio" name="main_o"><br><br>

       <fieldset>
        <legend>Marathi</legend><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Name:</label>
        <input class="col-md-3" type="text" name="name"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Address: H-No:</label>
        <input class="col-md-3" type="text" name=""><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Lane/Street:</label>
        <input class="col-md-3" type="text" name=""><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Locality:</label>
        <input class="col-md-3" type="text" name=""><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Pincode:</label>
        <input class="col-md-3" type="tel" name="pincode" id="pincode"><br><br>

        <legend>English</legend><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Name:</label>
        <input class="col-md-3" type="text" name="name"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Address: H-No:</label>
        <input class="col-md-3" type="text" name="address"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Lane/Street:</label>
        <input class="col-md-3" type="text" name="street"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Locality:</label>
        <input class="col-md-3" type="text" name="locality"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Pincode:</label>
        <input class="col-md-3" type="tel" name="pincode" id="pincode1"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Tel/Mobile No:</label>
        <input class="col-md-3" type="tel" name="Mobile" id="mob"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">Email:</label>
        <input class="col-md-3" type="Email" name="Email" id="email"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">PAN:</label>
        <input class="col-md-3" type="tel" name="pan" id="pan"><br><br>
        <h1 class="col-md-3"></h1>
        <label class="col-md-3">TAN:</label>
        <input  class="col-md-3" type="tel" name="tan" id="tan"><br><br>
      </fieldset><br><br>

      <legend style="text-align: center; font-size: 25px;">Other Information</legend><br>
      <h1 class="col-md-3"></h1>
      <label class="col-md-3">NIC-2008 Code:</label>
      <input  class="col-md-3 code" type="tel" name="nic" id="nic" style="margin-right: 30px;">
      <input class="col-md-3 inp" type="text"><br><br> <br>
      <h1 class="col-md-3"></h1>
      <label class="col-md-3">Year of starting of operation(Under current ownership):</label>
      <input class="col-md-3 inp" type="year" name="year"><br><br><br>
      <h1 class="col-md-3"></h1>
      <label class="col-md-3">Ownership Code:</label>
      <input class="col-md-3 inp" type="tel" name="ownership" id="ownership"><br><br><br>
      <h1 class="col-md-3"></h1>
      <label class="col-md-3">Total No. of person employed on the last working day of the visit:</label>
      <input class="col-md-3 inp" type="tel" name="employ"><br><br><br><br><br>


      <legend style="text-align: center; font-size: 24px;">Enter the registration number whichever is applicable</legend><br>
      <h1 class="col-md-3"></h1>
      <div class="dropup col-md-3">
        <button class="btn btn-active dropdown-toggle" type="button" data-toggle="dropdown">Choose the registration type
          <span class="caret"></span>
        </button>
          <ul class="dropdown-menu">
            <li><a href="#">Companies Act, 1956</a></li>
            <li><a href="#">Factories Act, 1948</a></li>
            <li><a href="#">Shops and Commercial Establishment Act, 1948</a></li>
            <li><a href="#">Societies Registration Act, 1860</a></li>
            <li><a href="#">Cooperative Societies Act, 1960</a></li>
            <li><a href="#">Khadi and Village Industries Board</a></li>
            <li><a href="#">Directorate of Industries(District Industries Centre)</a></li>
          </ul>
        </div>
        <input type="number" name="reg_no" id="reg_no" class="col-md-3" style="margin-bottom: 30px;">
        <br><br>
        <input type="submit" value="Submit" onclick="ckl()" class="btn btn-success" style="margin-left: 550px; margin-bottom: 20px; width: 130px; height: 45px; font-size: 20px; font-weight: 570 ">
      </form>
    </div>



    <script>
      function ckl(){
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

        if(state.value.length === 2 && dist.value.length === 3 && tal.value.length === 5 && town.value.length === 6 && ward.value.length === 4 && pincode.value.length === 6 && pincode1.value.length === 6 && mob.value.length === 10 && pan.value.length === 10 && tan.value.length === 10 && nic.value.length === 3 && reg_no.value.length === 10){
          alert("success");
        }
        else{
          alert("make sure all the inputs are correct")
        }
      }
    </script>
  </body>  