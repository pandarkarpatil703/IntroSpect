<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%
    String emailid = (String) session.getAttribute("emailid");
    String username = (String) session.getAttribute("username");
    String msg = (String) request.getAttribute("message");
%>
<html>
<head>
    <title>File Upload</title>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    
    <style>
        body {
            font-family: 'Lucida Grande', 'Helvetica Neue', sans-serif;
            background: #f8f9fa;
        }

        .container {
            max-width: 600px;
            margin: 80px auto;
            padding: 30px;
            background: white;
            box-shadow: 0px 0px 12px rgba(0,0,0,0.1);
            border-radius: 10px;
            text-align: center;
        }

        .welcome {
            font-size: 20px;
            margin-bottom: 20px;
            color: #2c3e50;
        }

        .custom_file_upload {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-bottom: 20px;
        }

        input.file {
            width: 300px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px 0 0 5px;
            font-size: 14px;
        }

        .file_upload {
            position: relative;
        }

        .file_upload label {
            display: inline-block;
            background-color: #3C91E6;
            color: white;
            padding: 10px 20px;
            cursor: pointer;
            border-radius: 0 5px 5px 0;
            font-weight: bold;
        }

        .file_upload input[type="file"] {
            display: none;
        }

        .submit-btn {
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #3C91E6;
            color: white;
            border: none;
            padding: 10px 30px;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #2b75c9;
        }

        .message {
            color: green;
            font-weight: bold;
            margin-top: 20px;
        }

    </style>

    <script type="text/javascript">
        function onfileselect() {
            document.getElementById("path").value = document.getElementById("file_upload").value;
        }
    </script>
</head>
<body>

<%@ include file="AfterLoginHeader.jsp" %>

<div class="container">
    <div class="welcome">Welcome, <%= username %></div>

    <form action="<%=request.getContextPath() %>/B" method="post" enctype="multipart/form-data">
        <div class="custom_file_upload">
            <input type="text" class="file" name="file_info" id="path" placeholder="No file chosen" readonly required>
            <div class="file_upload">
                <label for="file_upload">Browse</label>
                <input type="file" id="file_upload" name="file" onchange="onfileselect()" required>
            </div>
        </div>

        <input type="submit" value="Upload" class="submit-btn">
        <input type="hidden" name="action" value="fileupload">

        <% if (msg != null) { %>
            <div class="message"><%= msg %></div>
        <% } %>
    </form>
</div>

<%@ include file="Footer.jsp" %>
</body>
</html>
