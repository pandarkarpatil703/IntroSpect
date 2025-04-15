<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
<%String var =(String)request.getAttribute("message"); %>
<script type="text/javascript" src="validation.js"></script>
<style>
    /* Reset and base styles */
    html, body {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2; /* Optional: set a clean solid background color */
        color: #000;
    }

    /* Form container styled more vertically with blurred edges */
    .contact-form {
        width: 100%; /* Adjust width as needed */
        min-width: 350px;
        margin: 60px 300px;
        background-color: rgba(255, 255, 255, 0.93);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 6px 25px rgba(0, 0, 0, 0.35);
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: stretch;
        text-align: left;
        backdrop-filter: blur(10px); /* Blurring the background */
    }

    /* Headings and labels */
    .contact-form h2,
    .contact-form label {
        color: #000;
        margin-bottom: 8px;
        line-height: 1.4;
        display: block;
    }

    /* Form inputs */
    .contact-form input[type="text"],
    .contact-form input[type="email"],
    .contact-form input[type="number"],
    .contact-form textarea,
    .contact-form select {
        margin-top: 10px;
        margin-bottom: 15px;
        padding: 10px;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
    }

    /* Submit and Reset buttons styles */
    .contact-form input[type="submit"],
    .contact-form input[type="reset"] {
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        width: 48%; /* Adjust width to make buttons aligned */
        margin-top: 10px;
    }

    .contact-form input[type="submit"]:hover,
    .contact-form input[type="reset"]:hover {
        background-color: #218838;
        transform: scale(1.05);
    }

    .contact-form input[type="submit"]:focus,
    .contact-form input[type="reset"]:focus {
        outline: none;
    }

    /* Responsive layout for smaller screens */
    @media (max-width: 768px) {
        .contact-form {
            width: 90%;
            margin: 40px auto;
        }
    }

    /* Additional form errors */
    label#error {
        color: red;
        font-size: 12px;
    }
</style>
</head>
<body>
    <%@include file="Header.jsp"%>
<br><br><br>
    <div class="container">
      <div class="row">
        <div class="col-lg-12">
          <div class="row">
            <div class="col-lg-6 align-self-center">
                <div class="item header-text">
		      
		        <div class="contact-form">
					     <form method="post" action="<%=request.getContextPath()%>/RegServlet" class="left_form">
					     <%if(var != null){ %>
						<label> <%=var %></label>
						<%}%>
					     
					    	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>FIRST NAME</label></span>
						    	<span><input id="FNAME" type="text" placeholder="First Name *" name="FirstName" class="form-control" required="required" maxlength="15" onblur="firstname()" class="textbox"></span>
						    	<label id="FNAMEERROR"></label>
						    </div>
						    </div>
						    	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>LAST NAME</label></span>
						    	<span><input id="LNAME" type="text" placeholder="Last Name *" name="LastName" class="form-control" required="required" maxlength="15" onblur="lastname()"></span>
						    <label id="LNAMEERROR"></label>
						    </div>
						    </div>
						   	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>E-MAIL</label></span>
						    	<span><input id="email" type="email" class="form-control" placeholder="Your Email *" name="E-mail Id" required="required" class="textbox"></span>
						    </div>
						    </div>
						   	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>Professional</label></span>
						    	<span><select name="prof" class="form-control">
						    	<option>Personal Use</option>
						    	<option>Professional Use</option>
						    	</select> </span>
						    </div>
						    </div>
						     	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>MOBILE NO</label></span>
						    	<span><input id="MNO" type="number" placeholder="Your Phone *" name="Mobileno" class="form-control" required="required" maxlength="15" onblur="mobilenumber()"></span>
						    </div>
					    </div>
					        	<div class="form-row">
					    	 <div class="form-group col">
						    	<span><label>Address</label></span>
						    	<span><textarea id="ADDRESS" name="Address" class="form-control" placeholder="Your Address*" maxlength="50" required="required" onkeyup="checklength()"></textarea></span>
						    </div>
						    </div>
						    <div>
						   		<input class="btn_box" type="submit" value="Submit">
						   		<input class="btn_box" type="reset" value="Clear All">
						  </div>
						  <input type="hidden" value="registration" name="action">
					    </form>
				  </div>
			</div>		
		</div>
	</div>
<%@include file="Footer.jsp"%>
</body>
</html>
