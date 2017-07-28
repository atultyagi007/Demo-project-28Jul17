<%@page import="java.util.List"%>
<%@page import="service.LService"%>
<%@page import="java.util.Date"%>
<%@page import="jclass.Register"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
	<head>
		<title>
			Welcome Page
		</title>
		<link rel="stylesheet" type="text/css" href="style.css" />
		<script type="text/JavaScript">
		function disable(formId, yesNo) {
			   var f = document.getElementById(formId), s, opacity;
			   s = f.style;
			   opacity = yesNo? '00' : '100';
			   s.opacity = s.MozOpacity = s.KhtmlOpacity = opacity/100;
			   s.filter = 'alpha(opacity='+opacity+')';
			   for(var i=0; i<f.length; i++) f[i].disabled = yesNo;
			}
			window.onload=function(){disable('ShowForm',true);};
			function invokeServlet() {
			    $.post("jclass/ShowDetails"+user);
			}
		</script>
	</head>
	<body>
	<div id="outer">
	<div id="header">
				<div id="logo">
					<h1>
						Credit Card Approval System
					</h1>
				</div>	
		</div>
	<div id="banner">
				<img src="images/banner.jpg" alt="" />
			</div>
			
	<div id="nav">
					<ul>
						<li class="first">
							<a href="Home.jsp">Home</a>
						</li>
						<li>
							<a href="NewRegistration.jsp">New Registration</a>
						</li>
						<li>
							<a href="CustomerProfile.jsp">My Profile</a>
						</li>
						<li>
							<a href="Payment.jsp">Payment</a>
						</li>
						<li>
							<a href="Transactions.jsp">Transactions</a>
						</li>
						
						<li>
							<a href="contact.jsp">Contact us</a>
						</li>
					</ul><br class="clear" />
				</div>

<div id="main">
<div id="box">
	<div id="container">
	<div id="right">
		<a href="logout.jsp">Logout</a>
	</div>
<table>
         	<tr><td><h2>
        	<%Register user = (Register) session.getAttribute("user");%>    
			Welcome <%= user.getFirstName() + " " + user.getLastName()%>
			</h2><br/></td><td>
			
</td></tr></table> </div>

<form action="CustomerProfile.jsp">
<div class="col-half">
        <div class="input-group">
          <input value="<%=user.getFirstName()%>" type="hidden" name="help">
		  <input type="radio" name="check" value="Show Profile" id="gender" onclick="disable('ShowForm',false);"/>
          <label for="gender">Show Profile</label>
          <input type="radio" name="check" value="Edit Profile" id="gender1" onclick="disable('ShowForm',true);"/>
          <label for="gender1">Edit Profile</label>
        </div></div>
</form>
<div class="container">
  <form id="ShowForm" name="ShowForm" method="POST" action="ShowRegister">
    <div class="row">
      <h4>Personal Details</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="First Name" name="fname"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Last Name" name="lname"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Permanent Address" name="address"/>
        <div class="input-icon"><i class="fa fa-user"></i></div>
      </div>
       <div class="input-group input-group-icon">
        <input type="text" placeholder="Mobile Number +91" name="mobileno"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="email" placeholder="Email Adress" name="emailid"/>
        <div class="input-icon"><i class="fa fa-envelope"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Password" name="password"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
       <div class="input-group input-group-icon">
        <input type="text" placeholder="Date OF Birth" name="dob"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Gender" name="gender"/>
        <div class="input-icon"><i class="fa fa-key"></i></div>
      </div>
      <h4>Credit Card Payment Details</h4>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Card Number" name="cardnumber" id="cardnumber"/>
        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Card Type" name="cardtype" id="cardtype"/>
        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
      </div>
        <div class="input-group input-group-icon">
        <input type="text" placeholder="CCV" name="cardccv" id="cardccv"/>
        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
      </div>
        <div class="input-group input-group-icon">
        <input type="text" placeholder="Month Validity" name="mvalidity" id="mvalidity"/>
        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
      </div>
      <div class="input-group input-group-icon">
        <input type="text" placeholder="Year Validity" name="yvalidity" id="yvalidity"/>
        <div class="input-icon"><i class="fa fa-credit-card"></i></div>
      </div>
		</div>
  </form>
</div>
</div>
</div>
</div>
<div id="footer">
                            <a>Contact Us</a>
							<a hover>
							<table>
							<tr><td><a hover>Email: saxena_k@hcl.com</a></td></tr>
							<tr><td><a hover>Phone: +91 8960264057</a></td>
							<td><a hover>Copyright: @ All Rights Reserved</a></td></tr></table>
							</a>
</div></div>						
</body>
</html>