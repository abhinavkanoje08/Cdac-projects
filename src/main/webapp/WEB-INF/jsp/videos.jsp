<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="/static/css/logincss.css">
</head>
<img style="height: 100px; vertical-align: middle; width: 100px;"
			src="https://png.pngtree.com/element_our/sm/20180329/sm_5abc881cb2505.png">
<h1 style="color:white">Edu<span style="color: #F39C12">Cos</span></h1>&nbsp<h3 style="color:white">Learn</h3>

<section class='login' id='login'>
  <div class='head'>
  <img src="https://png.pngtree.com/element_our/sm/20180329/sm_5abc881cb2505.png">
  <h1 class='company'>Upload Videos</h1>
  </div>
			<spring:url value="/educos/uploadvideo" var="saveURL" />

  <div class='form'>
		<form:form modelAttribute='video' method="POST"
			action="${saveURL }" cssClass="form">
			
			<form:input type="text" placeholder="    Enter Your Name" path='uploadersname' id='uploadersname' class='text'/>
			<br>
			<br>
			<form:input type="text" placeholder="    Enter your Youtube video EmbedUrl" path='videolink' class='text' id='videolink'/>
			<br>
			<br>
			
			<form:input type="text" placeholder="    Enter video's subject" path='videosubject' class='text' id='videosubject'/>
			<br>
			<br>
			<button type="submit" class='btn-login'>Upload</button>
			
		</form:form>
	</div>
   <table align="center">
                <tr>
                    <td style="font-style: italic; color: red;">${message}</td>
                </tr>
            </table>
</section>
    