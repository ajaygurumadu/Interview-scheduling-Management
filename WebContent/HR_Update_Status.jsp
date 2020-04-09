<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Update Status</title>
</head>
<style>
    input[type=text], input[type=password], input[type=tel], input[type=number] {
  width: 60%;
  padding: 5px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
    form
    {
        margin-left: 30px;
    }
h1
{
    text-align: center;
}
.btn {
  background-color: #ddd;
  border: 2px;
  color: black;
  left:4cm;
  padding: 16px 32px;
  text-align: center;
  font-size: 16px;
  margin: 4px 2px;
  transition: 0.3s;
  border-radius: 15px 50px; 
}
.btnn {
  background-color:chartreuse;
  
  color:black;
  left:14cm;
  padding: 4px 32px;
  text-align: center;
  font-size: 16px;
  margin: 2px 2px;
  transition: 0.3s;
  border-radius: 15px 50px; 
  width:180px;
}
.btnnn {
  background-color:red;
  
  color:black;
  left:14cm;
  padding: 4px 32px;
  text-align: center;
  font-size: 16px;
  margin: 2px 2px;
  transition: 0.3s;
  border-radius: 15px 50px; 
  width:180px;
}
.btnn:hover {
  background-color:blue;
  color: blanchedalmond;
  }

.btnnn:hover {
  background-color:blue;
  color: blanchedalmond;
  }
.btn:hover {
  background-color: #90EE90;
  color:black;
  }
  </style>
<body>
<form method="post" action="HR_Update_Status" style="border:1px solid #ccc">
	 <div class="container">
	 <h1><b><i>Update Status</i></b></h1>
		<table align="center" width="50%" margin-left="auto" margin-right="auto">
			<tr><td>Candidate Id</td><td><input class="btn" type="text" name="cid"></td></tr>
			<tr><td>Status</td><td><input class="btn"  type="text" name="status"></td></tr>
			<tr><td><button class="btnn" type="submit">Update Status</button></td>
			<td><button class="btnnn" type="submit"><a href="HRmainpage.jsp">Go Back</a></button></td></tr>
		</table>
		
	</form>
</body>
</html>