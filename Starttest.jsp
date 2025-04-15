<%@page import="java.util.ArrayList"%>
<%@page import="bean.Questionbean"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Test Page</title>
<% ArrayList<Questionbean> list = (ArrayList<Questionbean>)session.getAttribute("list"); %>
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

    /* Form container styled more vertically */
    .form-container {
        width: 13%;
        min-width: 100px;
        margin: 60px 0 60px 2%;
        background-color: rgba(255, 255, 255, 0.93);
        padding: 50px 30px;
        border-radius: 12px;
        box-shadow: 0 6px 25px rgba(0, 0, 0, 0.35);
        display: flex;
        flex-direction: column;
        justify-content: flex-start;
        align-items: stretch;
        text-align: left;
    }

    /* Headings and labels */
    .form-container h4,
    .form-container h5,
    .form-container label {
        color: #000;
        margin-bottom: 8px;
        line-height: 1.4;
        display: block;
    }

    /* Dropdowns and inputs */
    .form-container select,
    .form-container input[type="submit"] {
        margin-top: 10px;
        margin-bottom: 15px;
        padding: 10px;
        font-size: 14px;
        border-radius: 5px;
        border: 1px solid #ccc;
        width: 100%;
        box-sizing: border-box;
    }

    /* Submit button style */
    .form-container input[type="submit"] {
        background-color: #28a745;
        color: white;
        font-weight: bold;
        border: none;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

 
</style>


</head>
<body>
  

    <%@include file="AfterLoginHeader.jsp"%>
<br><br><br><br><br><br>
    <div id="courses">
        <div class="container">
            <br>
            <div class="row">
                <!-- The left aligned form container -->
                <div class="form-container">
                    <form style="color: black" action="<%=request.getContextPath()%>/Test" method="post">
                        <h4 style="font-weight:bold;">Instruction:<br></h4>
                        <h5>
                            <label>Total number of questions : </label>
                            <select name="question">
                                <option>5</option>
                                <option>15</option>
                                <option>20</option>
                            </select>
                            <br>
                            <label>Select Your Expertise:</label>
                            <select name="typeofexam">
                                <option>WebDev</option>
                                <option>AppDev</option>
                                <option>Cyber Security</option>
                            </select>
                            <br>
                            <label>Once Submitted we will detect the Result<br></label>
                        </h5>
                        <h4 style="font-weight:bold;">Note:</h4>
                        <h5>
                            <label>
                                1. Click the 'Submit' button at the bottom of this page to submit your answers.<br>
                                2. Don't refresh the page.
                            </label>
                        </h5>
                        <br>
                        <input type="submit" class="btn_box" value="Start Exam">
                        <input type="hidden" name="action" value="test">
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
    
    <jsp:include page="Footer.jsp"></jsp:include> 
</body>
</html>
