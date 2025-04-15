<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript" src="calendar.js"></script>
<title>Report</title>
<% 
    String emailid = (String) session.getAttribute("emailid");
    String username = (String) session.getAttribute("username");
    String msg = (String) request.getAttribute("message");
    String s = (String) request.getAttribute("a");
%>

<style>
    body {
        margin: 0;
        padding: 0;
        font-family: Arial, sans-serif;
        background-color: #f5f5f5;
        color: #000;
    }

    /* Blurred card style for form */
    .contact-form {
        width: 40%;
        min-width: 300px;
        margin: 60px auto;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 8px 25px rgba(0, 0, 0, 0.2);
        backdrop-filter: blur(8px);
    }

    .contact-form label {
        font-weight: bold;
        display: block;
        margin-bottom: 8px;
    }

    .contact-form input[type="date"] {
        padding: 10px;
        width: 100%;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    /* Styled buttons */
    .btn {
        padding: 10px 20px;
        font-size: 15px;
        font-weight: bold;
        border: none;
        border-radius: 6px;
        background-color: #28a745;
        color: white;
        margin-right: 15px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    .btn:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    /* Chart image style */
    img {
        max-width: 100%;
        height: auto;
        margin-top: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 15px rgba(0,0,0,0.2);
    }

    /* Responsive tweak */
    @media (max-width: 768px) {
        .contact-form {
            width: 90%;
        }
    }
</style>
</head>
<body>
<br><br><br><br><br><br>

<%@include file="AfterLoginHeader.jsp"%>

<form action="<%=request.getContextPath() %>/B" method="post">              
    <div class="contact-data"> 
        <div class="container">
            <div class="contact-form">
                <div>
                    <label for="file_upload">Date:</label>
                    <input type="date" id="file_upload" class="form-control" name="date" required maxlength="15">
                </div>

                <input type="hidden" name="action" value="chart">
                <br><br>

                <input class="btn" type="submit" value="View Chart">
                <input class="btn" type="button" value="Generate PDF" onclick="window.print()">

                <% if ("a".equals(s)) { %>
                    <img src="BarChart.jpeg" alt="Image not found">
                <% } %>
            </div>
        </div>
    </div>	
</form>

<%@include file="Footer.jsp"%>
</body>
</html>
