<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="assignProject.aspx.cs" Inherits="FYPmanager.assignProject" %>

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
        body, html {
      height: 100%;
      margin: 0;
    }

    .bg5 {
      /* The image used */
      background-image: url("blackboard-1846865_1920.jpg");

      /* Full height */
      height: 100%; 

      /* Center and scale the image nicely */
      background-position: center;
      background-repeat: no-repeat;
      background-size: cover;
    }
    div.ex1 {
  margin-top: 40px;
    }
</style>
</head>
<body class="bg5">
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
        <table>
        <tr>
        <td>
        <div>
        <center>
        <h1 class="text-warning">Assigning Project</h1>
        </center>
        </div>
        <div>
            <h2 class="text-warning">Select Students</h2>
            <asp:CheckBoxList class="text-light" ID="studentCheckList" runat="server" DataSourceID="SqlDataSource1" DataTextField="Student_Name" DataValueField="Student_Name"></asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=DESKTOP-ESUEN6E\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Student Name] AS Student_Name FROM [student]"></asp:SqlDataSource>
        </div>
        <div>
            <h2 class="text-warning ">Select Advisors</h2>
            <asp:CheckBoxList class="text-light" ID="advisorCheckList" runat="server" DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="Name"></asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=DESKTOP-ESUEN6E\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Name] FROM [advisor]"></asp:SqlDataSource>
        </div>
        <div>
            <h2 class="text-warning ">Select a Project</h2>
            <asp:RadioButtonList class="text-light" ID="projectRadioBtn" runat="server" DataSourceID="projectNames" DataTextField="Project_Name" DataValueField="Project_Name"></asp:RadioButtonList>
            <asp:SqlDataSource ID="projectNames" runat="server" ConnectionString="Data Source=DESKTOP-ESUEN6E\SQLEXPRESS;Initial Catalog=Project;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [Project Name] AS Project_Name FROM [project]"></asp:SqlDataSource>
        </div>
        <asp:Button class=" btn-dark text-light" ID="assignProjectBtn" runat="server" Text="Assign" OnClick="assignProjectBtn_Click" />
        </td>
            <td><asp:GridView class="border-light bg-dark text-light" ID="assignTable" runat="server"></asp:GridView></td>
            </tr>
        </table>
        
        
    </form>

</body>
</html>
