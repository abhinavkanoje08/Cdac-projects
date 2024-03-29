<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html>
<html>
<head>
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
 <link rel="stylesheet" type="text/css" href="/static/css/home.css">
 <link rel="stylesheet" type="text/css" href="/static/css/footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<meta charset="ISO-8859-1">
<title>Educos Learn</title>
<style>
table {
	border-collapse: collapse;
	width: 100%;
	margin-bottom: 3cm;
}

th {
	background-color: #024F40;
	color: white;
	font-family: times new roman;
}

th, td {
	text-align: left;
	padding: 8px;
	margin: 1cm;
}

tr:nth-child(even) {
	background-color: #f2f2f2;
	margin: 1cm;
}
</style>
</head>
<body>
 <div style="background-color: #16A085">
 <div class="brand">
   <img style="height: 100px; vertical-align: middle; width: 100px;"
			src="https://png.pngtree.com/element_our/sm/20180329/sm_5abc881cb2505.png"><a href="#!">Edu<span style="color:#D68706">Cos</span><span style="font-size: 20px">Learn</span></a>
    </div><br/><br><br/><br>
     &nbsp;
<section class="navigation">
  <div class="nav-container">
   
    <nav>
      <div class="nav-mobile">
        <a id="nav-toggle" href="#!"><span></span></a>
      </div>
    
      <ul class="nav-list">
        <!-- Setting the links to #! will ensure that no action takes place on click. -->
        <c:if test="${names.roleid==0}">
        <li><a href="/educos/home">Home</a></li>
            
              <li><a href="/educos/assignmentupload">Assignment Upload</a></li>
              <li><a href="/educos/download">Download</a></li>
            
                        <li><a href="/educos/resultlist">Result</a></li>
               <li><a href="/educos/videopage">Online Session</a></li>
             
               
        <li><a href="/educos/aboutus">About</a></li>
        <li><a href="/educos/contactus">Contact</a></li>
        <br>
        <br>   
        </c:if>
        <c:if test="${name.roleid == 1}">
        <li><a href="/educos/home">Home</a></li>
          <li><a href="/educos/flist">Faculties</a></li>
            <li><a href="/educos/slist">Students</a></li>
            <li><a href="/educos/facultyadd">Add Faculty</a></li>
            
              <li><a href="/educos/assignmentupload">Assignment Upload</a></li>
              <li><a href="/educos/download">Download</a></li>
              <li><a href="/educos/resultlist">Result</a></li>
               <li><a href="/educos/videopage">Online Session</a></li>
             
               
        <li><a href="/educos/aboutus">About</a></li>
        <li><a href="/educos/contactus">Contact</a></li>
        <br>
        <br></c:if>
       
     
         <c:if test="${name.roleid ==2}">
        <li><a href="/educos/home">Home</a></li>
 
              <li><a href="/educos/assignmentupload">Assignment Upload</a></li>
              <li><a href="/educos/download">Download</a></li>
                         <li><a href="/educos/resultlist">Result</a></li>
               <li><a href="/educos/videopage">Online Session</a></li>
             
               
        <li><a href="/educos/aboutus">About</a></li>
        <li><a href="/educos/contactus">Contact</a></li>
        <br>
        <br></c:if>
       
       
</div>
        
      </ul>
    </nav>
  </div>
</section>
</div>

  <div class="dropdown" style="float:right;">
    <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">${name.fname}${names.sname}
    <span class="caret"></span></button>
    <ul class="dropdown-menu">
  
   <li><a href="/educos/fprofile">Profile</a></li>
      <li><a href="/educos/logout">Logout</a></li>
      
    
    </ul>
  </div>


	<br>
	<br>
	<br>
	<br>
	<div class="placeholder">
		<br> <br>
		<center>
			<h1 style="color: #024F40; margin-top: 1cm">Faculty Record</h1>
		</center>
		<br> <br> <br>

		<table>
			<tr>
			    <th>Result Id</th>
				<th>Student Id</th>
				<th>Student Name</th>
				<th>Assignment Attempted</th>
				<th>Quiz Attempted</th>
				<th>Quiz Record</th>
				<th>Assignment Record</th>
				<th>Action1</th>
				<th>Action2</th>

			</tr>
			<c:forEach items="${rlist}" var="r">
				<tr>
				    <td>${r.id}</td>
					<td>${r.sid}</td>
					<td>${r.name}</td>
					<td>${r.assignmentrecord}</td>
					<td>${r.quizattempt}</td>
					<td>${r.assignmentattempt}</td>
					<td>${r.quizrecord}</td>
					
					<td><spring:url value="/educos/update/${fac.fid}"
							var="updateURL" /> <a class="btn-login" href="${updateURL}"
						role="button">Update</a></td>

					<td><spring:url value="/educos/delete/${fac.fid}"
							var="deleteURL" /> <a class="btn-login" href="${deleteURL}"
						role="button">Delete</a></td>
 			</tr>
			</c:forEach>
		</table>
		<spring:url value="/educos/add" var="addURL" />
		<a class="btn-login" href="${addURL}" role="button">Add New
			Faculty</a> <br> <br> <br>
	</div>
	<br>
	<br>
	<br>
	<br>
	<footer style="margin-bottom: 40px; height: 600px;">
		<div class="content">
			<div id="emailsignup">
				<a href="https://www.Educos.com/">EduCos Learn</a>
				<p>
					Only the platform for students to learn every thing with faculties
					& byself using Resources<br style="margin: 0 0 12px 0;">
					<a href="//www.proxibid.com/marketingimages/masterblaster.html">View
						this week's newsletter</a>
				</p>
				<p>
					<a href="http://proxibidcontent.com/email-sign-up" class="btn"
						style="display: inline-block;">Sign up for our newsletter</a>
				</p>
			</div>
			<div id="helpfullinks">
				<div>
					<p class="category">
						<a href="http://proxibidcontent.com/about-us/">About us</a>
					</p>
					<ul>
						<li><a href="https://www.proxibid.com/asp/Help.asp">Help</a></li>
						<li><a href="https://www.proxibid.com/asp/contactus.asp">Contact
								us</a></li>
						<li><a href="http://proxibidcontent.com/leadership/">Leadership</a></li>
						<li><a href="http://proxibidcontent.com/careers/">Careers</a></li>
						<li><a href="http://proxibidcontent.com/our-newsroom/">Newsroom</a></li>
					</ul>
				</div>

				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div style="background: white; color: #1C2833; width: 1000px;">
				<div id="poweredby">
					<p>Powered by EduCos</p>
					<ul>
						<li><a target="_blank" href="http://www.orlando.co.in/"
							class="footer-ora">Orlando Academy</a></li>

					</ul>
				</div>
			</div>
			<div class="clear"></div>
			<div id="social">
				<ul class="social">
					<li><a target="_blank" href="https://www.facebook.com">Facebook</a></li>
					<li><a target="_blank" href="https://twitter.com">Twitter</a></li>
					<li><a target="_blank" href="https://www.youtube.com">YouTube</a></li>
					<li class="last"><a target="_blank"
						href="https://www.linkedin.com">LinkedIn</a></li>
				</ul>
				<div class="clear"></div>
				<ul class="contact">
					<li class="last">@2019 Educos Group & Development Team</li>
				</ul>
	</footer>
</body>