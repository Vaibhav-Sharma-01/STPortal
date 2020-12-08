<%@page import = "Dao.JSconnector" %>
<%@page import = "java.sql.*" %>
<%
try
{
	Connection con = JSconnector.getConnection();
	Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from student inner join result where student.roll_no=result.rollno and student.roll_no='"+session.getAttribute("roll")+"'");
	if(rs.next()){

%>
<%@include file="resulthead.jsp" %>
  <hr class="new1">
<style>
*{
    margin: 0px;
    padding: 0px;
}
.background{
    background:rgb(44 41 41 / 85%);
    background-size: cover;
    background-blend-mode: darken;
}
.navbar{
    display: flex;
    align-items: center;
    justify-content: center;
    position: sticky;
    top: 0;
    cursor: pointer;
}

.nav-list{
    width: 100%;
    display: flex;
    align-items: center;

}

.nav-list li{
    list-style: none;
    padding: 35px;
    
}

.nav-list li a{
    text-decoration: none;
    color: white;
    font-size: 18px;
    font-style: italic;
}

.nav-list li a:hover{
	font-style: italic;
	font-weight: bolder;
	color: black;
}

.logo{
    width: 15%;
    display: flex;
    justify-content: center;
    align-items: center;

}

.logo img{
    width:30%;
    margin: 10px 10px;
}
.dropdown {
    position: relative;
    display: inline-block;
}
.dropdown-content {	
    display: none;
    position: fixed;
    right: 0;
    background-color: #f9f9f9;
    min-width: 250px;
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
table{
  width:100%;
  table-layout: fixed;
}
th{
  padding: 20px 15px;
  text-align: left;
  font-weight: 500;
  font-size: 12px;
  color: #fff;
  text-transform: uppercase;
 border: 2px solid rgba(255,255,255,0.3);
}


/* demo styles */

@import url(https://fonts.googleapis.com/css?family=Roboto:400,500,300,700);
body{
  background: #17a2b8cc;
  font-family: 'Roboto', sans-serif;
}

</style>
  <!--for demo wrap-->
  <div class="tbl-header">
    <table cellpadding="0" cellspacing="0" border="0">
      <thead>
        <tr>
          <th>institution Name: DGI</th>
          <th>Course Name: <%=rs.getString(1) %></th>
          <th>Branch Name: <%=rs.getString(2) %></th>
          <th><center>RollNo: <%=rs.getString(3) %></center></th>
        </tr>
      </thead>
      <thead>
        <tr>
          <th>Name: <%=rs.getString(4) %></th>
          <th>Father Name: <%=rs.getString(5) %></th>
          <th>Gender: <%=rs.getString(6) %></th>
          <th><a title="print screen" alt="print screen" onclick="window.print();" target="_blank" style="cursor:pointer;"><center><img src="images/print.png"></center></a></th>
        </tr>
      </thead>
    </table>
  </div>
<style>
html {
  font-family:arial;
  font-size: 25px;
}

td {
  border: 2px solid black;
  padding: 15px;
  color:white;
  text-align:center;
}

thead{
  font-weight:bold;
  text-align:center;
  background-color: rgb(0, 37, 64);
  color:white;
}

table {
  border-collapse: collapse;
}

.footer {
  text-align:right;
  font-weight:bold;
}

tbody >tr:nth-child(odd) {
  background: #3f51b566;
}

</style>
<head>
  <hr class="new1">
</head>
<body>
  <table>
    <thead>
      <tr>
        <td colspan="3">Course</td>
        <td rowspan="2">Type</td>
        <td rowspan="2">Full Marks</td>
        <td rowspan="2">Passing Marks</td>
        <td rowspan="2">Obtained Marks</td>
        
      </tr>
      <tr>
        <td>Code </td>
        <td colspan="2"> Name </td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>NAS101</td>
        <td colspan="2">Engg. Physics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td><%=rs.getString(12) %></td>
      </tr>
      <tr>
        <td>NAS102</td>
        <td colspan="2">Engg. Chemistry</td>
        <td>Theory</td>
        <td>100</td>
        <td>30</td>
        <td><%=rs.getString(13) %> </td>
      </tr>
      <tr>
        <td>NAS103</td>
        <td colspan="2">Engg. Mathematics-I </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(14) %></td>
      </tr>
      <tr>
        <td>NEE101</td>
        <td colspan="2">Basic Electrical Engg. </td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(15) %></td>
      </tr>
      <tr>
        <td>NEC101</td>
        <td colspan="2">Electronic Engg.</td>
        <td>Theory</td>
        <td>100</td>
        <td> 30 </td>
        <td> <%=rs.getString(16) %> </td>
      </tr>
      <tr>
        <td>NAS152</td>
        <td colspan="2">Engg. Chemistry Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> <%=rs.getString(17) %> </td>
      </tr>
      <tr>
        <td>NAS151</td>
        <td colspan="2">Engg. Physics Lab</td>
        <td>Practical</td>
        <td>30</td>
        <td>15</td>
        <td> <%=rs.getString(18) %> </td>
      </tr>
    </tbody>
    <tfoot>
      <tr>
        <td colspan="4" class="footer">Total Marks</td>
        <td>560</td>
        <td>180</td>
        <td><%int sum = rs.getInt(12)+rs.getInt(13)+rs.getInt(14)+rs.getInt(15)+rs.getInt(16)+rs.getInt(17)+rs.getInt(18); out.println(sum); %> </td>
      </tr>
      <tr>
        <td colspan="4" class="footer">Percentage</td>
        <td colspan="3"><% out.println((sum*100)/560); %></td>
      </tr>
  </table>
    <hr class="new1">
  <center><h6>Note: Institution doesn't own for the errors or omissions, if any, in this statement.
Designed & Developed by BTech Days Team</h6></center>
  <hr class="new1">
<center><h6>All Right Reserved @ BTech Days :: 2015-2020</h6></center> 
  <hr class="new1">
</body>

<%}
else
{
	response.sendRedirect("");
}
}
catch(Exception e)
{}
%>