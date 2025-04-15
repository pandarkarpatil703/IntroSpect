<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<%
    String isuccess = (String) request.getAttribute("username");
%>
<style>
    /* Reset and base styles */
    html, body {
        margin: 0;
        padding: 0;
        height: 100%;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        color: #000;
    }

    /* Full-page background color */
    body {
        background-color: #f2f2f2;
    }

    /* Form container styled more vertically */
    .contact-data {
        width: 40%;
        min-width: 300px;
        margin: 60px auto;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 12px;
        box-shadow: 0 6px 25px rgba(0, 0, 0, 0.35);
        text-align: left;
    }

    .contact-data h2 {
        font-weight: bold;
        text-align: center;
        margin-bottom: 20px;
    }

    /* Form inputs and labels */
    .contact-form label {
        color: #000;
        margin-bottom: 8px;
        display: block;
    }

    .form-group,
    .contact-form input[type="text"],
    .contact-form input[type="password"],
    .contact-form input[type="submit"],
    .contact-form input[type="reset"] {
        width: 100%;
        margin-bottom: 15px;
        padding: 10px;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Specific input styling */
    .contact-form input[type="text"],
    .contact-form input[type="password"] {
        background-color: #fff;
    }

    /* Submit button styling */
    .contact-form input[type="submit"],
    .contact-form input[type="reset"] {
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    /* Hover effect for buttons */
    .contact-form input[type="submit"]:hover,
    .contact-form input[type="reset"]:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    /* Blur effect for form container */
    .contact-data {
        background-color: rgba(255, 255, 255, 0.8);
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
    }

    /* Error message styling */
    .error-message {
        color: red;
        font-weight: bold;
        text-align: center;
        margin-bottom: 10px;
    }

    /* Responsive layout for smaller screens */
    @media (max-width: 768px) {
        .contact-data {
            width: 80%;
            margin: 40px auto;
        }
    }
</style>
</head>
<body>



<%@include file="Header.jsp"%>
<br><br><br><br><br><br>
    <div class="contact-data">
        <div class="container">
        

            <div class="contact-form">
                <form method="post" action="<%=request.getContextPath()%>/RegServlet"  class="left_form">
                    <% if("invalid".equals(isuccess)) { %>
                        <span class="error-message">Invalid username or password.</span>
                    <% request.setAttribute("message", ""); } %>

                    <div class="form-group">
                        <span><label>Email Id</label></span>
                        <span>
                            <input class="form-control" type="text" name="EMAILID" maxlength="50" placeholder="Email Id" required="required" />
                        </span>
                    </div>

                    <div class="form-group">
                        <span><label>Password</label></span>
                        <span>
                            <input id="FNAME" class="form-control" type="password" name="PASSWORD" maxlength="25" placeholder="Password" required="required" />
                        </span>
                    </div>

                    <div>
                        <input class="btn_box" type="submit" value="Submit" class="myButton">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <input type="reset" class="btn_box" value="Clear All" class="myButton">
                    </div>
                    <input type="hidden" value="login" name="action">
                </form>
            </div>
        </div>
    </div>

<%@include file="Footer.jsp"%>
</body>
</html>
