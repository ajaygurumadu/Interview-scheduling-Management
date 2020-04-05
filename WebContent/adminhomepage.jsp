<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<style type="text/css">


	.form-control {
		box-shadow: none;		
		font-weight: normal;
		font-size: 13px;
	}
	.form-control:focus {
		border-color: #33cabb;
		box-shadow: #9CD8E2;
	}
	.navbar-header.col {
		padding: 0 !important;
	}	
	.navbar {
		background: #fff;
		padding-left: 16px;
		padding-right: 16px;
		border-bottom: 1px solid #dfe3e8;
		border-radius: 0;
        z-index:9999;
	}
	.nav-link img {
		border-radius: 50%;
		width: 36px;
		height: 36px;
		margin: -8px 0;
		float: left;
		margin-right: 10px;
	}
	.navbar .navbar-brand, .navbar .navbar-brand:hover, .navbar .navbar-brand:focus {
		padding-left: 0;
		font-size: 20px;
		padding-right: 50px;
	}
	.navbar .navbar-brand b {
		font-weight: bold;
		color: #9CD8E2;		
	}
	.navbar .form-inline {
        display: inline-block;
    }
	.navbar .nav li {
		position: relative;
	}
	.navbar .nav li a {
		color: #888;
	}
	.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
		color: #fff;
		background: #33cabb;
		padding-top: 8px;
		padding-bottom: 6px;
		vertical-align: middle;
		border: none;
	}	
	.navbar .nav .btn-primary:hover, .navbar .nav .btn-primary:focus {		
		color: #fff;
		outline: none;
		background: #31bfb1;
	}
	.navbar .navbar-right li:first-child a {
		padding-right: 30px;
	}
	.navbar .nav-item i {
		font-size: 18px;
	}
	.navbar .dropdown-item i {
		font-size: 16px;
		min-width: 22px;
	}
	.navbar ul.nav li.active a, .navbar ul.nav li.open > a {
		background: transparent !important;
	}	
	.navbar .nav .get-started-btn {
		min-width: 120px;
		margin-top: 8px;
		margin-bottom: 8px;
	}
	.navbar ul.nav li.open > a.get-started-btn {
		color: #fff;
		background: #31bfb1 !important;
	}
	.navbar .dropdown-menu {
		border-radius: 1px;
		border-color: #e5e5e5;
		box-shadow: 0 2px 8px rgba(0,0,0,.05);
	}
	.navbar .nav .dropdown-menu li {
		color: #999;
		font-weight: normal;
	}
	.navbar .nav .dropdown-menu li a, .navbar .nav .dropdown-menu li a:hover, .navbar .nav .dropdown-menu li a:focus {
		padding: 8px 20px;
		line-height: normal;
	}
	.navbar .navbar-form {
		border: none;
	}
	.navbar .dropdown-menu.form-wrapper {
		width: 280px;
		padding: 20px;
		left: auto;
		right: 0;
        font-size: 14px;
	}
	.navbar .dropdown-menu.form-wrapper a {		
		color: #33cabb;
		padding: 0 !important;
	}
	.navbar .dropdown-menu.form-wrapper a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .hint-text {
		text-align: center;
		margin-bottom: 15px;
		font-size: 13px;
	}
	.navbar .form-wrapper .social-btn .btn, .navbar .form-wrapper .social-btn .btn:hover {
		color: #fff;
        margin: 0;
		padding: 0 !important;
		font-size: 13px;
		border: none;
		transition: all 0.4s;
		text-align: center;
		line-height: 34px;
		width: 47%;
		text-decoration: none;
    }	
	
	.navbar .form-wrapper .form-footer {
		text-align: center;
		padding-top: 10px;
		font-size: 13px;
	}
	.navbar .form-wrapper .form-footer a:hover{
		text-decoration: underline;
	}
	.navbar .form-wrapper .checkbox-inline input {
		margin-top: 3px;
	}

    .navbar .checkbox-inline {
		font-size: 13px;
	}
	.navbar .navbar-right .dropdown-toggle::after {
		display: none;
	}
	@media (min-width: 1200px){
		.form-inline .input-group {
			width: 300px;
			margin-left: 30px;
		}
	}
	@media (max-width: 768px){
		.navbar .dropdown-menu.form-wrapper {
			width: 100%;
			padding: 10px 15px;
			background: transparent;
			border: none;
		}
		.navbar .form-inline {
			display: block;
		}
		.navbar .input-group {
			width: 100%;
		}
		.navbar .nav .btn-primary, .navbar .nav .btn-primary:active {
			display: block;
		}
	}
</style>
<body>
<nav class="navbar navbar-default navbar-expand-lg navbar-light">
	<div class="navbar-header d-flex col">
		<a class="navbar-brand" href="mainlog.html">I<b>SM</b></a>  		
		<button type="button" data-target="#navbarCollapse" data-toggle="collapse" class="navbar-toggle navbar-toggler ml-auto">
			<span class="navbar-toggler-icon"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
	</div>
	<!-- Collection of nav links, forms, and other content for toggling -->
	<div id="navbarCollapse" class="collapse navbar-collapse justify-content-start">

		<form class="navbar-form form-inline">

		</form>
		<ul class="nav navbar-nav navbar-right ml-auto">			

			<li class="nav-item">
			<form class="logout" action="mainlog.html">
				<a href="logout"  class="btn btn-primary dropdown-toggle get-started-btn mt-1 mb-1">Logout</a>
			</form>
			</li>
		</ul>
	</div>
</nav>
  <div class="row" style="margin-left: auto; margin-right:auto; padding-left:10%; padding-top:6%;">
  <div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    	<div class="card-body">
      		<form method="get" action="ShowHR.jsp">
				<input class="btn btn-primary" type="submit" value="HR Logs">
			</form>
    	</div> 
    	</div>
  </div>
  <div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    	<div class="card-body">
			<form method="get" action="ShowUsers.jsp">
				<input  class="btn btn-primary" type="submit" value="User Logs">
			</form>
    	</div> 
    	</div>
   </div>
   <div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
				<form method="get" action="view_applications.jsp">
				<input class="btn btn-primary" type="submit" value="View Applications">
				</form>
    		</div> 
		</div>
	</div>
	</div>
	<div class="row" style="margin-left: auto; margin-right:auto; padding-left:10%; padding-top:6%;">
	<div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
				<form method="get" action="Show.jsp">
				<input class="btn btn-primary" type="submit" value="Manage Posted Jobs">
				</form>
    		</div> 
		</div>
	</div>
		<div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
				<form method="get" action="Show_result.jsp">
				<input class="btn btn-primary" type="submit" value="Result of interview">
				</form>
    		</div> 
		</div>
	</div>
			<div class="col-xs-4 col-sm-4 col-lg-4">
  		<div class="card w-75 p-3" style="width:400px">
    		<img class="card-img-top" src="viewjobs.jpg" alt="Card image" style="width:100%">
    		<div class="card-body">
				<form method="get" action="Admin_Update_Status.jsp">
				<input class="btn btn-primary" type="submit" value="Update Status">
				</form>
    		</div> 
		</div>
	</div>
</div>
</body>
</body>
</html>