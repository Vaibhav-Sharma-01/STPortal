<%@include file="header.html"%>
<!DOCTYPE html>
<html>
<title>Hod</title>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<style>
.dropdown {
  position: relative;
  display: inline-block;
}
body{
 line-height: 25px;
    word-spacing: 0px;
    font-style: italic;
}
.dropdown-content {	
  display: none;
  position: fixed;
  right: 0;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
.rightnav{
    text-align: right;
    left: 30%;
    width:30%;
    padding: 0px 23px;
    position: relative;
    top: 4vh;
    left: 62%;
}
#sea{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    top: 6px;
    left: 11vh;
}
#srch{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    top: 6px;
    left: 11vh;
}
#sarch{
    padding: 5px;
    border: 2px solid grey;
    border-radius: 9px;
    position: relative;
    top: 6px;
    left: 11vh;
}
.btns{
    padding: 8px 20px;
    border: 2px solid black;
    border-radius: 8px;
    background: none;
    color: black;
    cursor: pointer;
    width: 30%;
}
.btns-sm{
    vertical-align: middle;
}
.background{
    background-color:rgba(66, 66, 66, 0.9);
}
.bg{
background-image: url("images/bg2.jpg");
}
</style>
<body class="bg">
<div class="w3-container">
  <nav class="navbar background h-nav" style="font-family:'Aclonica'; ">
  <img alt="old version of browser" src="images/ABESEC_logo.png" width="5%">
    <button class="w3-bar-item w3-button tablink w3-red divis" onclick="openCity(event,'London')"><i>Add Faculty</i></button>
    <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Paris')"><i>ADD Subjects</i></button>
    <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'India')"><i>Add Attendance</i></button>
     <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Tokyo1')"><i>Registered Faculty</i></button>
     <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'Tokyo')"><i>View Subjects</i></button>
     <button class="w3-bar-item w3-button tablink divis" onclick="openCity(event,'attendance')"><i>View Attendance</i></button>
     <div class="dropdown">
     <button class="w3-bar-item w3-button tablink divis" onclick="visible()"><i>More</i></button>
     <div class="dropdown-content">
     <a href="HODHome.jsp" class="w3-bar-item w3-button tablink divis"><i>Edit your Profile</i></a>
     <a href="logout" class="w3-bar-item w3-button tablink divis"><i>Logout</i></a>
     </div>
     </div>
  </nav>
  <div id="London" class="w3-container w3-border city">
  <br>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<main class="my-form" >
    <div class="cotainer" style="font-family: 'Aclonica';">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="backcard">
                        <center><div class="card-header divi bg2"><b><i>Add New Faculty</i></b></div></center>
                        <div class="table-back">
                            <form name="my-form" onsubmit="return validform()" action="AddNewFaculty.jsp" method="post">
                                <div class="form-group row">
                                    <label for="full_name" class="col-md-4 col-form-label text-md-right div"><i>ID</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="Id">
                                    </div>
                                </div>
                                <input type="hidden" name="viewid" value="HOD.jsp">
                                <div class="form-group row">
                                    <label for="phone_number" class="col-md-4 col-form-label text-md-right div"><i>Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="name">
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="email_address" class="col-md-4 col-form-label text-md-right div"><i>Branch Name</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="branch" value="${department }" >		
                                    </div>
                                </div>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Subject Teaching</i></label>
                                    <div class="col-md-6">
                                        <input type="text" class="form-control div" name="subject">
                                    </div>
                                </div>

                                

                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Email ID</i></label>
                                    <div class="col-md-6">
                                        <input type="text"  class="form-control div" name="email">
                                    </div>
                                </div>

								<div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Semester teaching</i></label>
                                    <div class="col-md-6">
                                         <select  class="form-control div" name="semester">
                                        <option value="one">one</option>
  										<option value="two">two</option>
  										<option value="three">three</option>
  										<option value="four">four</option>
  										<option value="five">five</option>
  										<option value="six">six</option>
  										<option value="seven">seven</option>
  										<option value="eight">eight</option>
  										</select>
                                    </div>
                                </div>
                                <style>
	                                .container {
										  display: inline;
										  position: relative;
										  padding-left: 35px;
										  margin-bottom: 12px;
										  cursor: pointer;
										  font-size: 22px;
										  -webkit-user-select: none;
										  -moz-user-select: none;
										  -ms-user-select: none;
										  user-select: none;
										}
										
										/* Hide the browser's default checkbox */
										.container input {
										  position: absolute;
										  opacity: 0;
										  cursor: pointer;
										  height: 0;
										  width: 0;
										}
										
										/* Create a custom checkbox */
										.checkmark {
										  position: absolute;
										  top: 0;
										  left: 0;
										  height: 25px;
										  width: 25px;
										  background-color: #eee;
										}
										
										/* On mouse-over, add a grey background color */
										.container:hover input ~ .checkmark {
										  background-color: #ccc;
										}
										
										/* When the checkbox is checked, add a blue background */
										.container input:checked ~ .checkmark {
										  background-color: #2196F3;
										}
										
										/* Create the checkmark/indicator (hidden when not checked) */
										.checkmark:after {
										  content: "";
										  position: absolute;
										  display: none;
										}
										
										/* Show the checkmark when checked */
										.container input:checked ~ .checkmark:after {
										  display: inline;
										}
										
										/* Style the checkmark/indicator */
										.container .checkmark:after {
										  left: 9px;
										  top: 5px;
										  width: 5px;
										  height: 10px;
										  border: solid white;
										  border-width: 0 3px 3px 0;
										  -webkit-transform: rotate(45deg);
										  -ms-transform: rotate(45deg);
										  transform: rotate(45deg);
										}
                                </style>
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Section teaching <br>(Max. two)</i></label>
                                    <div class="col-md-6">
                                         <label class="container">&nbsp;&nbsp;&nbsp;A
										  <input type="checkbox" class="check" name="chk" value="A">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">&nbsp;&nbsp;&nbsp;B
										  <input type="checkbox"  class="check" name="chk" value="B">
										  <span class="checkmark"></span>
										</label>
										
										<label class="container">&nbsp;&nbsp;&nbsp;C
										  <input type="checkbox" class="check" name="chk" value="C">
										  <span class="checkmark"></span>
										</label>
										
						 				<label class="container">&nbsp;&nbsp;&nbsp;D
										  <input type="checkbox" class="check" name="chk" value="D">
										  <span class="checkmark"></span>
										</label>
										<script>
										$("input[name=chk]").change(function(){
										    var max= 2;
										    if( $("input[name=chk]:checked").length == max ){
										        $("input[name=chk]").attr('disabled', 'disabled');
										        $("input[name=chk]:checked").removeAttr('disabled');
										    }else{
										         $("input[name=chk]").removeAttr('disabled');
										    }
										});
										</script>
                                    </div>
                                </div>
								
                                    <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div><br>
                    </div><br>
            </div>
        </div>
    </div>
</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
  </div>

  <div id="Paris" class="w3-container w3-border city" style="display:none">
  <br>
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Raleway:300,400,600" rel="stylesheet" type="text/css">



    <link rel="icon" href="Favicon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">

</head>
<body>



<main class="my-form" style="height: 70vh;font-family: 'Aclonica';">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                    <div class="backcard">
                        <center><div class="card-header divi"><b><i>Add Subjects</i></b></div></center>
                        <div class="table-back">
                            <form name="my-form" onsubmit="return validform()" action="AddSubjects.jsp" method="post">
                            	<div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Subject Code</i></label>
                                    <div class="col-md-6">
                                        <select  class="form-control div" name="Scode" id="code">
                                        <option value="1">KIT-501</option>
  										<option value="2">KCS-503</option>
  										<option value="3">KCS-501</option>
  										<option value="4">KCS-055</option>
  										</select>
                                    </div>
                                </div>
                            
                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Subject Name</i></label>
                                    <div class="col-md-6">
                                        <select  class="form-control div" name="Sname" id="subject">
                                        <option value="1">Web Technology</option>
  										<option value="2">DAA</option>
  										<option value="3">DBMS</option>
  										<option value="4">ML</option>
  										</select>
                                    </div>
                                </div>

								<script type="text/javascript">
								 $(document).ready(function() {
                            		  $("#code").change(function() { 
                            		    $("#subject").val($(this).val());
                            		  });
                            		});
								 $(document).ready(function() {
                           		  $("#subject").change(function() { 
                           		    $("#code").val($(this).val());
                           		  });
                           		});
								</script>

                                <div class="form-group row">
                                    <label for="user_name" class="col-md-4 col-form-label text-md-right div"><i>Department</i></label>
                                    <div class="col-md-6">
                                       <input type="text"  class="form-control div" name="department" value="${department }">                                        
                                    </div>
                                </div>
                                           
                                <div class="form-group row">
                                    <label for="present_address" class="col-md-4 col-form-label text-md-right div"><i>Semester</i></label>
                                    <div class="col-md-6">
                                         <select  class="form-control div" name="semester">
                                        <option value="one">one</option>
  										<option value="two">two</option>
  										<option value="three">three</option>
  										<option value="four">four</option>
  										<option value="five">five</option>
  										<option value="six">six</option>
  										<option value="seven">seven</option>
  										<option value="eight">eight</option>
  										</select>
                                    </div>
                                </div>                 
                                
                                    <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
            </div>
        </div>
        <br>
    </div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html> 
  </div>


<div id="India" class="w3-container w3-border city"
	style="display: none">
	<br>
	<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<main class="my-form" style="height: 70vh;font-family: 'Aclonica';">
		<div class="cotainer">
			<div class="row justify-content-center">
				<div class="col-md-8">
					<div class="backcard">
						<center><div class="card-header divi"><b><i>Insert New Attendance</i></b></div></center>
						<div class="table-back">
							<form name="my-form" onsubmit="return validform()"
								action="attendance" method="post">
								<div class="form-group row">
									<label for="full_name"
										class="col-md-4 col-form-label text-md-right div"><i>ID
										</i></label>
									<div class="col-md-6">
										<input type="text" class="form-control div" name="rollno">
									</div>
								</div>

								<div class="form-group row">
									<label for="date" class="col-md-4 col-form-label text-md-right div"><i>Date</i></label>
									<div id="date-picker-example"
										class="col-md-6" inline="true" oninput="day()">
										<input placeholder="Select date" type="date" id="date"
											class="form-control div" name="date"> <label for="example">
									</div>
								</div>

								<script type="text/javascript">
								function day() {
									  var date=document.getElementById("date").value;
									  var d = new Date(date);
									  var weekday = new Array(7);
									  weekday[0] = "Sunday";
									  weekday[1] = "Monday";
									  weekday[2] = "Tuesday";
									  weekday[3] = "Wednesday";
									  weekday[4] = "Thursday";
									  weekday[5] = "Friday";
									  weekday[6] = "Saturday";
									  var n = weekday[d.getDay()];
									  document.getElementById("day").value = n;
									}
								</script>

								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right div"><i>Day</i></label>
									<div class="col-md-6">
										<input type="text" class="form-control div" name="day" id="day">
									</div>
								</div>

								<div class="form-group row">
									<label for="user_name"
										class="col-md-4 col-form-label text-md-right div"><i>Attendance</i></label>
									<div class="col-md-6">
										<input type="text" class="form-control div" name="att">
									</div>
								</div>

								 <div class="col-md-6 offset-md-4 div">
                                        <button type="submit" class="btn btn-primary btns div">
                                        <i><b>Save</b></i>
                                        </button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<br>
</div>

</main>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>
</div> 


  <div id="Tokyo1" class="w3-container w3-border city" style="display:none;font-family: 'Aclonica';">
  <div class="rightnav v-class">
			<input type="text" name="search" id="sea">
			<button class="btns btns-sm">Search</button>
		</div>
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>ID</b></i></th>
          <th class="division"><i><b>Name</b></i></th>
          <th class="division"><i><b>Branch</b></i></th>
          <th class="divisions"><i><b>Subject Teaching</b></i></th>
 		  <th class="divisions"><i><b>Semester Teaching</b></i></th>
          <th class="divisions"><i><b>Section 1</b></i></th>
		  <th class="divisions"><i><b>Section 2</b></i></th>
          <th class="division"><i><b>Email ID</b></i></th>
          <th class="division"><i><b></b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
      <%@page import = "java.sql.*" %>
      <%@page import = "Dao.JSconnector" %>
	  <%try
	  {
		  Connection con = JSconnector.getConnection();
		  PreparedStatement ps = con.prepareStatement("select * from teacher where branch=?");
			ps.setString(1, (String)session.getAttribute("department"));
			ResultSet rs = ps.executeQuery();
		  while(rs.next())
		  {
	  %>
        <tr>
          <td class="division"><i><b><%=rs.getString(1) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(2) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(8) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(9) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(10) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(5) %></b></i></td>
          <form method="post" action="deleteteacher">
	  <input type="hidden" name="email" value="<%=rs.getString(5) %>">
	  <input type="hidden" name="viewid" value="HOD.jsp">
	  <td><i><b><button type="submit" class="delete">delete</button></b></i></td>
	   </form>
          
        </tr>
      </tbody>
      <%}}
	  catch(Exception e)
	  {}
	  %>
    </table>
  </div>
</section>
</div>
<div id="Tokyo" class="w3-container w3-border city" style="display:none;font-family: 'Aclonica';">
   <div class="rightnav v-class">
			<input type="text" name="search" id="srch">
			<button class="btns btns-sm">Search</button>
		</div>
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>Subject Code</b></i></th>
          <th class="division"><i><b>Subject Name</b></i></th>
          <th class="division"><i><b>Department</b></i></th>
          <th class="division"><i><b>Semester</b></i></th>
          <th class="division"><i><b></b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
<%@page import = "java.sql.*"%>
<%@page import = "Dao.JSconnector" %>
<%try
{
	Connection con = JSconnector.getConnection();
	PreparedStatement ps = con.prepareStatement("select * from subjects where department=?");
	ps.setString(1, (String)session.getAttribute("department"));
	ResultSet rs = ps.executeQuery();
    while(rs.next())
    {
%>
        <tr>
          <td class="division"><i><b><%=rs.getString(2) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(5) %></b></i></td>
           <form method="post" action="deletesubject">
	  <input type="hidden" name="Scode" value="<%=rs.getString(1) %>">
	  <input type="hidden" name="viewid" value="HOD.jsp">
	  <td><i><b><button type="submit" class="delete">delete</button></b></i></td>
	   </form>          
        </tr>
      </tbody>
<%}}
catch(Exception e)
{}
%>
    </table>
  </div>
</section>

</div>

<div id="attendance" class="w3-container w3-border city" style="display:none;font-family: 'Aclonica';">
   <div class="rightnav v-class">
			<input type="text" name="search" id="sarch">
			<button class="btns btns-sm">Search</button>
		</div>
<section>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th class="division"><i><b>RollNo.</b></i></th>
          <th class="divisions"><i><b>Name</b></i></th>
          <th class="division"><i><b>Date</b></i></th>
          <th class="division"><i><b>Subject</b></i></th>
          <th class="division"><i><b>Attendance</b></i></th>
        </tr>
      </thead>
    </table>
  </div>
  <div class="tbl-content">
    <table cellpadding="0" cellspacing="0" border="0" id="student">
      <tbody>
<%@page import = "java.sql.*"%>
<%@page import = "Dao.JSconnector" %>
<%try
{
	Connection con = JSconnector.getConnection();
    PreparedStatement ps=con.prepareStatement("select * from attendance");
    ResultSet rs = ps.executeQuery();
    while(rs.next())
    {
%>
        <tr>
          <td class="division"><i><b><%=rs.getInt(1) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(2) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(3) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(4) %></b></i></td>
          <td class="division"><i><b><%=rs.getString(7) %></b></i></td>
        </tr>
      </tbody>
<%}}
catch(Exception e)
{}
%>
    </table>
  </div>
</section>
<script>  
      $(document).ready(function(){  
           $('#sarch').keyup(function(){  
                search_table($(this).val());  
           });  
           function search_table(value){  
                $('#student tr').each(function(){  
                     var found = 'false';  
                     $(this).each(function(){  
                          if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                          {  
                               found = 'true';  
                          }  
                     });  
                     if(found == 'true')  
                     {  
                          $(this).show();  
                     }  
                     else  
                     {  
                          $(this).hide();  
                     }  
                });  
           }  
      });  
      
      $(document).ready(function(){  
          $('#sea').keyup(function(){  
               search_table($(this).val());  
          });  
          function search_table(value){  
               $('#student tr').each(function(){  
                    var found = 'false';  
                    $(this).each(function(){  
                         if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                         {  
                              found = 'true';  
                         }  
                    });  
                    if(found == 'true')  
                    {  
                         $(this).show();  
                    }  
                    else  
                    {  
                         $(this).hide();  
                    }  
               });  
          }  
     }); 
      $(document).ready(function(){  
          $('#srch').keyup(function(){  
               search_table($(this).val());  
          });  
          function search_table(value){  
               $('#student tr').each(function(){  
                    var found = 'false';  
                    $(this).each(function(){  
                         if($(this).text().toLowerCase().indexOf(value.toLowerCase()) >= 0)  
                         {  
                              found = 'true';  
                         }  
                    });  
                    if(found == 'true')  
                    {  
                         $(this).show();  
                    }  
                    else  
                    {  
                         $(this).hide();  
                    }  
               });  
          }  
     });
 </script>
</div>

<%@include file="foot.jsp"%>
</body>
</html>