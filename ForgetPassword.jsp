<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Forget Password</title>
<% Boolean msg = (Boolean) request.getAttribute("msg"); %>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
    }

    .form-card {
        width: 35%;
        min-width: 300px;
        margin: 80px auto;
        background-color: rgba(255, 255, 255, 0.95);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(8px);
    }

    h2 {
        text-align: center;
        color: #28a745;
        margin-bottom: 30px;
    }

    .form-card label {
        display: block;
        color: #3C91E6;
        font-weight: bold;
        margin-bottom: 8px;
    }

    .form-card input[type="email"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        font-size: 14px;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
    }

    .form-card input[type="submit"],
    .form-card input[type="reset"] {
        padding: 10px 20px;
        font-size: 15px;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        background-color: #28a745;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
        margin-right: 15px;
    }

    .form-card input[type="submit"]:hover,
    .form-card input[type="reset"]:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    .msg {
        font-size: 15px;
        margin-bottom: 20px;
        padding: 10px;
        text-align: center;
        border-radius: 5px;
    }

    .msg.error {
        background-color: #dc3545;
        color: white;
    }

    .msg.success {
        background-color: #28a745;
        color: white;
    }

    @media (max-width: 768px) {
        .form-card {
            width: 90%;
        }
    }
</style>
</head>
<body>

<%@include file="Header.jsp"%>

<div class="form-card">
    <h2>Forget Password</h2>

    <% if (msg != null) {
        if (!msg) { %>
            <div class="msg error">
                Username is not registered. To register, 
                <a href="<%=request.getContextPath()%>/JSP/Registration.jsp" style="color: #fff; text-decoration: underline;">Click here</a>
            </div>
    <%  } else { %>
            <div class="msg success">Please check your email-id for password.</div>
    <%  }
    } %>

    <form method="post" action="<%=request.getContextPath()%>/RegServlet">
        <label>Email ID</label>
        <input class="form-control" type="email" name="EMAILID" placeholder="Enter your Email" required>

        <input type="submit" value="Submit" class="btn btn-success">
        <input type="reset" value="Clear All" class="btn btn-success">
        <input type="hidden" value="forgetpassword" name="action">
    </form>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>
