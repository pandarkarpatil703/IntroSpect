<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Change Password</title>
<% 
    String emailid = (String) session.getAttribute("emailid");
    String message = (String) request.getAttribute("message");
%>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
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

    h1 {
        text-align: center;
        color: #28a745;
        margin-bottom: 25px;
    }

    .form-card label,
    .form-card span {
        display: block;
        font-weight: bold;
        color: #3C91E6;
        margin-bottom: 8px;
    }

    .form-card input[type="password"] {
        width: 100%;
        padding: 10px;
        margin-bottom: 18px;
        border-radius: 5px;
        border: 1px solid #ccc;
        font-size: 14px;
        box-sizing: border-box;
    }

    .form-card input[type="submit"] {
        padding: 10px 20px;
        font-size: 15px;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        background-color: #28a745;
        color: white;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .form-card input[type="submit"]:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    .message {
        color: green;
        margin-bottom: 20px;
        text-align: center;
    }

    @media (max-width: 768px) {
        .form-card {
            width: 90%;
        }
    }
</style>
</head>
<body>

<%@include file="AfterLoginHeader.jsp"%>  
<br><br><br>
<div class="form-card">
    <form name="login-form" action="<%=request.getContextPath()%>/RegServlet" method="post">
        <h1>Change Password</h1>

        <% if (message != null) { %>
            <div class="message"><%= message %></div>
        <% } %>

        <input type="hidden" value="changepwd" name="action">

        <span>Current Password</span>
        <input type="password" name="CPWD" class="textbox" required>

        <span>New Password</span>
        <input type="password" name="NPWD" class="textbox" required>

        <span>Confirm New Password</span>
        <input type="password" name="NPWD" class="textbox" required>

        <input type="submit" name="submit" value="Change Password" class="button">
    </form>
</div>

<%@include file="Footer.jsp"%>
</body>
</html>
