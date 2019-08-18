<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 400 15px/1.8 Lato, sans-serif;
      color: #777;
  }
  h3, h4 {
      margin: 10px 0 30px 0;
      letter-spacing: 10px;      
      font-size: 20px;
      color: #111;
  }
  .container {
      padding: 80px 120px;
  }
  .person {
      border: 10px solid transparent;
      margin-bottom: 25px;
      width: 80%;
      height: 80%;
      opacity: 0.7;
  }
  .person:hover {
      border-color: #f1f1f1;
  }
  .carousel-inner img {
     
     /*  filter: grayscale(90%); /* make all photos black and white */ */ 
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
  .carousel-caption h3 {
      color: #fff !important;
  }
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
  .bg-1 {
      background: #2d2d30;
      color: #bdbdbd;
  }
  .bg-1 h3 {color: #fff;}
  .bg-1 p {font-style: italic;}
  .list-group-item:first-child {
      border-top-right-radius: 0;
      border-top-left-radius: 0;
  }
  .list-group-item:last-child {
      border-bottom-right-radius: 0;
      border-bottom-left-radius: 0;
  }
  .thumbnail {
      padding: 0 0 15px 0;
      border: none;
      border-radius: 0;
  }
  .thumbnail p {
      margin-top: 15px;
      color: #555;
  }
  .btn {
      padding: 10px 20px;
      background-color: #333;
      color: #f1f1f1;
      border-radius: 0;
      transition: .2s;
  }
  .btn:hover, .btn:focus {
      border: 1px solid #333;
      background-color: #fff;
      color: #000;
  }
  .modal-header, h4, .close {
      background-color: #333;
      color: #fff !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-header, .modal-body {
      padding: 40px 50px;
  }
  .nav-tabs li a {
      color: #777;
  }
  #googleMap {
      width: 100%;
      height: 400px;
      -webkit-filter: grayscale(100%);
      filter: grayscale(100%);
  }  
  .navbar {
      font-family: Montserrat, sans-serif;
      margin-bottom: 0;
      background-color: #2d2d30;
      padding:40px;
      border: 0;
      font-size: 11px !important;
      letter-spacing: 4px;
      opacity: 0.9;
  }
  .navbar li a, .navbar .navbar-brand { 
  	position:inherit;
  	top:0px;
  	 left:0px;
      color: #d5d5d5 !important;
  }
  .navbar-nav li a:hover {
      color: #fff !important;
  }
  .navbar-nav li.active a {
      color: #fff !important;
      background-color: #29292c !important;
  }
  .navbar-default .navbar-toggle {
      border-color: transparent;
  }
  .open .dropdown-toggle {
      color: #fff;
      background-color: #555 !important;
  }
  .dropdown-menu li a {
      color: #000 !important;
  }
  .dropdown-menu li a:hover {
      background-color: red !important;
  }
  footer {
      background-color: #2d2d30;
      color: #f5f5f5;
      padding: 32px;
  }
  footer a {
      color: #f5f5f5;
  }
  footer a:hover {
      color: #777;
      text-decoration: none;
  }  
  .form-control {
      border-radius: 0;
  }
  textarea {
      resize: none;
  }
  </style>
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="50">

<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage"> <img src="images/logo.jpg" id="content" onresize="80%"/></a>
    </div>
    <div class="navbar-header">
    <h2 style="color: silver;">Farmer to Customer Direct Sell System</h2>
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <!-- <li><a href="basic/process_">SHOW PRODUCTS</a></li> -->
        <li><a href="#catagory">CATAGORY</a></li>
        <li><a href="#contact">CONTACT</a></li>
         <li><a href="basic/about.jsp">ABOOUT US</a></li>
         <li><a href="basic/login.jsp">LOGIN</a></li>
        
        
        <!-- <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">MORE
          <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Merchandise</a></li>
            <li><a href="#">Extras</a></li>
            <li><a href="#">Media</a></li> 
          </ul>
        </li> -->
        
        
        <!-- <li><a href="#"><span class="glyphicon glyphicon-search"></span></a></li> -->
      </ul>
    </div>
  </div>
</nav>

 <div id="myCarousel" class="carousel slide" data-ride="carousel">
    Indicators
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
       <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>
 
    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img src="images/1.jpg" alt="New York" width="1000" height="500">
        <div class="carousel-caption">
         <!--  <h3>New York</h3>
          <p>The atmosphere in New York is lorem ipsum.</p> -->
        </div>      
      </div>

      <div class="item">
        <img src="images/2.jpg" alt="Chicago" width="1000" height="500">
        <div class="carousel-caption">
         <!--  <h3>Chicago</h3>
          <p>Thank you, Chicago - A night we won't forget.</p> -->
        </div>      
      </div>
    
      <div class="item">
        <img src="images/5.jpg" alt="Los Angeles" width="1000" height="500">
        <div class="carousel-caption">
          <!-- <h3>LA</h3>
          <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p> -->
        </div>      
      </div>
      <div class="item">
        <img src="images/7.jpg" alt="Los Angeles" width="1000" height="500">
        <div class="carousel-caption">
          <!-- <h3>LA</h3>
          <p>Even though the traffic was a mess, we had the best time playing at Venice Beach!</p> -->
        </div>      
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
<marquee behavior="alternate"><h2>Today's Temprature is 18°C</h2></marquee>
<!-- Container (The Band Section) -->
<div id="catagory" class="container text-center">
  <h3>FOODS CATAGORY</h3>
  <!-- <p><em>We love Foods</em></p> -->
  
  <!-- <p>We have created a fictional band website. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
  <br> -->
  
  <div class="row">
    <div class="col-sm-4">
      <p class="text-center"><strong>Fruits</strong></p><br>
      <a href="#demo1">
        <img src="images/fruit.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo" class="collapse">
        <p>Guitarist and Lead Vocalist</p>
        <p>Loves long walks on the beach</p>
        <p>Member since 1988</p>
      </div> -->
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Vegitables</strong></p><br>
      <a href="#demo2" data-toggle="collapse">
        <img src="images/4.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo2" class="collapse">
        <p>Drummer</p>
        <p>Loves drummin'</p>
        <p>Member since 1988</p>
      </div> -->
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Pulses</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/pulses.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo3" class="collapse">
        <p>Bass player</p>
        <p>Loves math</p>
        <p>Member since 2005</p>
      </div> -->
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Fertilizers</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/fertilizers.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo3" class="collapse">
        <p>Bass player</p>
        <p>Loves math</p>
        <p>Member since 2005</p>
      </div> -->
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Seeds</strong></p><br>
      <a href="#demo3" data-toggle="collapse">
        <img src="images/seeds.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo3" class="collapse">
        <p>Bass player</p>
        <p>Loves math</p>
        <p>Member since 2005</p>
      </div> -->
    </div>
    <div class="col-sm-4">
      <p class="text-center"><strong>Spices</strong></p><br>
      <a href="#demo3" >
        <img src="images/spices.jpg" class="img-circle person" alt="Random Name" width="255" height="255">
      </a>
      <!-- <div id="demo3" class="collapse">
        <p>Bass player</p>
        <p>Loves math</p>
        <p>Member since 2005</p>
      </div> -->
      
    </div>
    
  </div>
  <div id="contact" class="container">
  <h3 class="text-center">Contact</h3>
  <p class="text-center"><em>We proud our farmers!</em></p>

  <!-- <div class="row">
    <div class="col-md-4">
      <p>Fan? Drop a note.</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Chicago, US</p>
      <p><span class="glyphicon glyphicon-phone"></span>Phone: +00 1515151515</p>
      <p><span class="glyphicon glyphicon-envelope"></span>Email: mail@mail.com</p>
    </div>
    <div class="col-md-8">
      <div class="row">
        <div class="col-sm-6 form-group">
          <input class="form-control" id="name" name="name" placeholder="Name" type="text" required>
        </div>
        <div class="col-sm-6 form-group">
          <input class="form-control" id="email" name="email" placeholder="Email" type="email" required>
        </div>
      </div>
      <textarea class="form-control" id="comments" name="comments" placeholder="Comment" rows="5"></textarea>
      <br>
      <div class="row">
        <div class="col-md-12 form-group">
          <button class="btn pull-right" type="submit">Send</button>
        </div>
      </div> -->
  <table border="0" cellpadding="1" cellspacing="1" height="125" width="1037">
<tbody>       
<tr>
<td style="width: 25%">Amit Hubale</td>
<td style="width: 25%">Sumedh Jogdande</td>
<td style="width: 25%">Dinesh Metkari</td>
<td style="width: 25%">Swapnil Darekar</td>
<td>&nbsp;</td>
</tr>
<tr>
<td style="width: 254px">mob no:9673024464</td>
<td style="width: 639px">mob no:8657407085</td>
<td>mob no:9960386166</td>
<td style="width: 25%">mob no.9922634411</td>
</tr>
<tr>
<td style="width: 254px">email: amithubale@gmail.com</td>
<td style="width: 639px">email: srjogdande93@gmail.com</td>
<td>email: dineshmetkari001@gmail.com</td>
<td style="width: 25%">email: swapnildarekar41@gmail.com</td>
</tr>

</tbody>
</table>
</div>
</body>
</html>