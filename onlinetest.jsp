<!DOCTYPE html>
<html lang="en">
<%@page import="bean.Questionbean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Test</title>

<%ArrayList<Questionbean> list=(ArrayList<Questionbean>)session.getAttribute("list"); %>
<%Integer questionno=(Integer)request.getAttribute("questionno"); 

if(questionno==null)
    questionno=0;
%>

<script language="JavaScript">
var d1 = new Date ();
var d2 = new Date ( d1 );
d2.setMinutes ( d1.getMinutes() + 30 );
TargetDate = d2;

BackColor = "palegreen";
ForeColor = "navy";
CountActive = true;
CountStepper = -1;
LeadingZero = true;
DisplayFormat = "%%H%% Hours, %%M%% Minutes, %%S%% Seconds.";
FinishMessage = "It is finally here!";
</script>
<script language="JavaScript" src="<%=request.getContextPath()%>/JSP/timer.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.2/jquery-ui.min.js"></script>

<script>
    $(document).ready(function() {
        function disableBack() { window.history.forward() }

        window.onload = disableBack();
        window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
    });
</script>

<style>
    /* Reset and base styles */


    /* Form container styled more vertically */
    .form-container {
        width: 50%;
        min-width: 350px;
        margin: 60px auto;
        background-color: rgba(255, 255, 255, 0.93);
        padding: 30px 30px;
        border-radius: 12px;
        box-shadow: 0 6px 25px rgba(0, 0, 0, 0.1);
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
    .form-container input[type="submit"],
    .form-container textarea {
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

    /* Hover effect for submit button */
    .form-container input[type="submit"]:hover {
        background-color: #218838;
        transform: scale(1.03);
    }

    /* Clear button hover effect */
    .clear-button:hover {
        background-color: #f2f2f2;
        transform: scale(1.03);
    }

    /* Responsive layout for smaller screens */
    @media (max-width: 768px) {
        .form-container {
            width: 90%;
            margin: 40px auto;
        }
    }

    /* Adding a blurry border effect to divs */
    .form-container {
        border: 2px solid rgba(0, 0, 0, 0.2);
        filter: blur(0px);
        transition: filter 0.3s ease;
    }

    .form-container textarea {
        resize: none;
    }

    /* Position the camera at the top left */
    .camera {
        position: absolute;
        top: -450px;
        left: 120px;
        width: 100px; /* You can adjust this width and height to fit your design */
        height: ;
    }

    /* Position the mic button beside the camera */
    .mic-button {
        position: absolute;
        top: 100px;
        left: 10px;
        padding: 10px;
        background-color: #28a745;
        border: none;
        color: white;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .mic-button:hover {
        background-color: #218838;
    }
</style>

</head>
<body>
<br><br><br><br><br><br><<br><br><br><br><br><br>
<%@include file="AfterLoginHeader.jsp"%>
<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

		<div class="row">
			
	</div>
	
		<form action="<%=request.getContextPath()%>/Test" method="post" id="a">			

			<%String b=(String)list.get(questionno).getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", ""); %>
							<div class="form-container">
							<table style="color: black;font-size: 30px">
							<tr>
								<td colspan="2"><label ><%=questionno+1%>)<%=list.get(questionno).getQid() %><%="?" %></label>
								
								<input type="hidden" id="qq" value="<%=questionno+1%>)<%=list.get(questionno).getQid() %>">
								 
								</td>
								</tr>
								<tr>
								<td colspan="2">
									<input style="color: black" type="hidden" name ="questionno" value="<%=questionno+1%>">	
									<input style="color: black" type="hidden" name ="action" value="test">		
									<textarea   class="<%=list.get(questionno).getQid().replaceAll(" ", "").replaceAll("\\?", "").toLowerCase() %>" name="<%=list.get(questionno).getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>" id="<%=list.get(questionno).getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>" style="color:black" rows="2" cols="30" required><%if(request.getAttribute(b) != null) {%> <%=request.getAttribute(b) %><%} %>  </textarea></td>
									 
									<td>
									<td><input type="submit" class="btn_box"  value="Next" name="action1">
									 	 <input class="btn btn-success"  style="color: black;align:center;width: 100%"  type="button" value="Mic" onclick="fun('<%=list.get(questionno).getQid().replaceAll(" ", "").toLowerCase().replaceAll("\\?", "") %>')" >
									
									<input type="hidden" name="action" value="result"></td><td> <div class="camera">
            <video id="video">Video stream not available.</video>
        </div></td>	
								</tr>
       
        </form>
    </div>

  
<script>
var recognition = null;
function fun(a)
{
	if(recognition!=null)
		{
		 document.getElementById("a").submit();
		}
	var speech = true;
	window.SpeechRecognition = window.SpeechRecognition
					|| window.webkitSpeechRecognition;

	recognition = new SpeechRecognition();
	recognition.interimResults = true;
	//const words = document.querySelector('.'+a);
	
	

	//words.appendChild(a);
	recognition.addEventListener('result', e => {
		const transcript = Array.from(e.results)
			.map(result => result[0])
			.map(result => result.transcript)
			.join('')
//alert(transcript);
		document.getElementById(a).value = transcript;
		console.log(transcript);
	});
	
	if (speech == true) {
		recognition.start();
		recognition.addEventListener('end', recognition.start);
	}
	}

</script>
    <script>
    /* JS comes here */
    (function() {
        var width = 520; // We will scale the photo width to this
        var height = 100; // This will be computed based on the input stream

        var streaming = false;

        var video = null;
        var canvas = null;
        var photo = null;
        var startbutton = null;

        function startup() {
            video = document.getElementById('video');
            canvas = document.getElementById('canvas');
            photo = document.getElementById('photo');
            startbutton = document.getElementById('startbutton');

            navigator.mediaDevices.getUserMedia({
                    video: true,
                    audio: false
                })
                .then(function(stream) {
                    video.srcObject = stream;
                    video.play();
                })
                .catch(function(err) {
                    console.log("An error occurred: " + err);
                });

            video.addEventListener('canplay', function(ev) {
                if (!streaming) {
                    height = video.videoHeight / (video.videoWidth / width);

                    if (isNaN(height)) {
                        height = width / (4 / 3);
                    }

                    video.setAttribute('width', width);
                    video.setAttribute('height', height);
                    canvas.setAttribute('width', width);
                    canvas.setAttribute('height', height);
                    streaming = true;
                }
            }, false);

            startbutton.addEventListener('click', function(ev) {
                takepicture();
                ev.preventDefault();
            }, false);

            clearphoto();
        }

        function clearphoto() {
            var context = canvas.getContext('2d');
            context.fillStyle = "#AAA";
            context.fillRect(0, 0, canvas.width, canvas.height);

            var data = canvas.toDataURL('image/png');
            photo.setAttribute('src', data);
        }

        function takepicture() {
            var context = canvas.getContext('2d');
            if (width && height) {
                canvas.width = width;
                canvas.height = height;
                context.drawImage(video, 0, 0, width, height);

                var data = canvas.toDataURL('image/png');
                photo.setAttribute('src', data);
                photo.src = canvas.toDataURL("image/png");
                
                document.getElementById("snapURL").value=photo.src
                console.log(photo.src);
            } else {
                clearphoto();
            }
        }

        window.addEventListener('load', startup, false);
    })();
    </script>
    <script src="<%=request.getContextPath()%>/assets/js/jquery.min.js"></script>
	<script src="<%=request.getContextPath()%>/assets/js/bootstrap.min.js"></script>
	<jsp:include page="Footer.jsp"></jsp:include>
</body>
</html>
