<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="FYPmanager.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="utf-8"/>
	<meta name="viewport" content="width=device-width, initial-scale=1"/>
	<!--<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>-->
	<link rel="stylesheet" href="bootstrap.min.css"/>
    <style>
  /* Make the image fully responsive */
  div.ex1 {
  margin-top: 100px;
    }
  .carousel-inner img {
      width: 100%;
      height: 100%;
  }
  </style>
</head>
<body style="background-image: url('homeImage.jpg');">
    <!-- Nav-bar-->
<nav class="navbar navbar-expand-lg navbar-light bg-dark ">
  <a class="navbar-brand text-light" href="Home.aspx"><h2 class="text-success">FYP Manager</h2></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
 </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
        <li class="nav-item ">
        <a class="nav-link text-light" href="Student.aspx"><h5>Student</h5></a>
      </li>
      <li class="nav-item ">
        <a class="nav-link text-light" href="Advisor.aspx"><h5>Advisor</h5></a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="Project.aspx"><h5>Add Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="assignProject.aspx"><h5>Assigning Project</h5></a>
      </li>
        <li class="nav-item">
        <a class="nav-link text-light" href="evaluationProject.aspx"><h5>Evaluation of Project</h5></a>
      </li>
    </ul>
  </div>
</nav>
    <form id="form1" runat="server">
        <div class="ex1 text-center container text-success font-weight-bold">
            <h1>Main Menu</h1>
        </div>
        <div class="text-center ">
            <button type="button" class="btn btn-lg btn-primary bg-dark text-light" onclick="window.location.href = 'Student.aspx';">1.Student</button>
            <br /><br />
            <button type="button" class="btn btn-primary btn-lg bg-dark text-light" onclick="window.location.href = 'Advisor.aspx';">2.Advisor</button>
            <br /><br />
            <button type="button" class="btn btn-primary btn-lg bg-dark text-light" onclick="window.location.href = 'Project.aspx';">3.Add Project</button>
            <br /><br />
            <button type="button" class="btn btn-primary btn-lg bg-dark text-light" onclick="window.location.href = 'assignProject.aspx';">4.Assigning Project</button>
            <br /><br />
            <button type="button" class="btn btn-primary btn-lg bg-dark text-light" onclick="window.location.href = 'evaluationProject.aspx';">5.Evaluation of Project</button>



            <!--
            <h2 class="text-white border-danger">1.<a href ="Student.aspx" class="text-white">Student</a></h2>
            <h2 class="text-white border-danger">2.<a href ="Advisor.aspx"class="text-white">Advisor</a></h2>
            
            <h2 class="text-white border-danger">3.<a href ="Project.aspx" class="text-white">Add Project</a></h2>
            <h2 class="text-white border-danger">4.<a href ="assignProject.aspx" class="text-white">Assigning Project</a></h2>
            <h2 class="text-white border-danger">5.<a href ="evaluationProject.aspx" class="text-white">Evaluation of Project</a></h2>-->


        </div>
    </form>
   
</body>
</html>
