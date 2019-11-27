<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="/static/css/main.css" />
<script src="http://code.jquery.com/jquery-2.1.0.min.js"></script>
 <link rel="stylesheet" type="text/css" href="/static/css/home.css">
 <link rel="stylesheet" type="text/css" href="/static/css/footer.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<meta charset="ISO-8859-1">
<title>Educos Learn</title>
</head>
<body>
<section class="navigation">
  <div class="nav-container">
   
    <nav>
      <div class="nav-mobile">
        <a id="nav-toggle" href="#!"><span></span></a>
      </div>
    
      <ul class="nav-list">
        <!-- Setting the links to #! will ensure that no action takes place on click. -->
        <li><a href="/educos/home">Home</a></li>
          <li><a href="/educos/flist">Faculties</a></li>
            <li><a href="/educos/slist">Students</a></li>
              <li><a href="/educos/">Assignments</a></li>
              <li><a href="#">Quiz</a></li>
              <li><a href="#">Result</a></li>
               <li><a href="#">Online Session</a></li>
        <li><a href="#!">About</a></li>
        <li><a href="#!">Contact</a></li>
      </ul>
    </nav>
  </div>
</section>


<br><br><br><br>
<div class="placeholder">
 <div class="upload-container">
            <div class="upload-header">
                <h2>Upload ASsignment</h2>
            </div>
            <div class="upload-content">
                <div class="single-upload">
                    <h3>Upload Single File</h3>
                    <form id="singleUploadForm" name="singleUploadForm">
                        <input id="singleFileUploadInput" type="file" name="file" class="file-input" required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="singleFileUploadError"></div>
                        <div id="singleFileUploadSuccess"></div>
                    </div>
                </div>
                <div class="multiple-upload">
                    <h3>Upload Multiple Files</h3>
                    <form id="multipleUploadForm" name="multipleUploadForm">
                        <input id="multipleFileUploadInput" type="file" name="files" class="file-input" multiple required />
                        <button type="submit" class="primary submit-btn">Submit</button>
                    </form>
                    <div class="upload-response">
                        <div id="multipleFileUploadError"></div>
                        <div id="multipleFileUploadSuccess"></div>
                    </div>
                </div>
            </div>
        </div>

</div>
<br><br><br><br>
<footer>
		<div class="content">
			<div id="emailsignup">
				<a href="https://www.Educos.com/" >EduCos Learn</a>
				<p>Only the platform for students to learn every thing with faculties & byself using Resources<br style="margin: 0 0 12px 0;"><a href="//www.proxibid.com/marketingimages/masterblaster.html">View this week's newsletter</a></p>
				<p><a href="http://proxibidcontent.com/email-sign-up" class="btn" style="display:inline-block;">Sign up for our newsletter</a></p>
			</div>
			<div id="helpfullinks">
				<div>
					<p class="category"><a href="http://proxibidcontent.com/about-us/">About us</a></p>
					<ul>
						<li><a href="https://www.proxibid.com/asp/Help.asp">Help</a></li>
						<li><a href="https://www.proxibid.com/asp/contactus.asp">Contact us</a></li>
						<li><a href="http://proxibidcontent.com/leadership/">Leadership</a></li>
						<li><a href="http://proxibidcontent.com/careers/">Careers</a></li>
						<li><a href="http://proxibidcontent.com/our-newsroom/">Newsroom</a></li>
						<li><a href="https://sites.proxibid.com/advertising/">Advertise with us</a></li>
						<li><a href="https://www.proxibid.com/asp/UnifiedUserAgreement.asp" target="_blank">User agreement</a></li>
						<li><a href="https://www.proxibid.com/asp/PrivacyPolicy.asp" target="_blank">Privacy policy</a></li>
						<li><a href="https://uk.proxibid.com/" target="_blank">Proxibid UK</a></li>
					</ul>
				</div>
				<div>
					<p class="category"><a href="http://proxibidcontent.com/buying">Buying</a></p>
					<ul>
						<li><a href="http://proxibidcontent.com/createaccount">Creating account</a></li>
						<li><a href="http://proxibidcontent.com/navigating">Searching</a></li>
						<li><a href="http://proxibidcontent.com/audiovideo">Using audio/video</a></li>
						<li><a href="http://proxibidcontent.com/purchase">Purchasing</a></li>
						<li><a href="http://proxibidcontent.com/shipping">Shipping</a></li>
						<li><a href="http://proxibidcontent.com/feedbackratings">Giving feedback</a></li>
						<li><a href="http://proxibidcontent.com/buyerresources">Buying resources</a></li>
					</ul>
				</div>
				<div class="last">
					<p class="category"><a href="http://proxibidcontent.com/selling">Selling</a></p>
					<a href="https://www.proxibid.com/asp/Auctioneer/AuctioneerHome.asp" class="btn">Seller login</a>
					<ul>
						<li><a href="https://www.proxibid.com/asp/createSeller.asp?">Apply to sell</a></li>
						<li><a href="http://proxibidcontent.com/buynow">Buy Now</a></li>
						<li><a href="http://proxibidcontent.com/auction">Auction</a></li>
						<li><a href="http://proxibidcontent.com/storefronts">Storefronts</a></li>
						<li><a href="http://proxibidcontent.com/security">Security</a></li>
						<li><a href="http://proxibidcontent.com/services">Services</a></li>
						<li><a href="http://proxibidcontent.com/sellerresources">Selling resources</a></li>
					</ul>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
			<div id="poweredby">
				<p>Powered by Proxibid</p>
				<ul>
					<li><a target="_blank" href="http://www.shopdivvy.com/" class="footer-divvy">Divvy</a></li>
					<li><a target="_blank" href="http://www.proxibid.com/asp/fine-art-auctions.asp" class="footer-finest">The Finest</a></li>
					<li class="last"><a target="_blank" href="http://www.auctionpaymentnetwork.com/" class="footer-apn">APN</a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<div id="social">
				<ul class="social">
					<li><a target="_blank" href="https://www.facebook.com">Facebook</a></li>
					<li><a target="_blank" href="https://twitter.com">Twitter</a></li>
					<li><a target="_blank" href="https://www.youtube.com">YouTube</a></li>
					<li class="last"><a target="_blank" href="https://www.linkedin.com">LinkedIn</a></li>
				</ul>
				<div class="clear"></div>
				<ul class="contact">
					<li class="last">@2019 Educos Group & Development Team</li>
				</ul>
			
	</footer>
	<script type="text/javascript">
	'use strict';

	var singleUploadForm = document.querySelector('#singleUploadForm');
	var singleFileUploadInput = document.querySelector('#singleFileUploadInput');
	var singleFileUploadError = document.querySelector('#singleFileUploadError');
	var singleFileUploadSuccess = document.querySelector('#singleFileUploadSuccess');

	var multipleUploadForm = document.querySelector('#multipleUploadForm');
	var multipleFileUploadInput = document.querySelector('#multipleFileUploadInput');
	var multipleFileUploadError = document.querySelector('#multipleFileUploadError');
	var multipleFileUploadSuccess = document.querySelector('#multipleFileUploadSuccess');

	function uploadSingleFile(file) {
	    var formData = new FormData();
	    formData.append("file", file);

	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/uploadFile");

	    xhr.onload = function() {
	        console.log(xhr.responseText);
	        var response = JSON.parse(xhr.responseText);
	        if(xhr.status == 200) {
	            singleFileUploadError.style.display = "none";
	            singleFileUploadSuccess.innerHTML = "<p>File Uploaded Successfully.</p><p>DownloadUrl : <a href='" + response.fileDownloadUri + "' target='_blank'>" + response.fileDownloadUri + "</a></p>";
	            singleFileUploadSuccess.style.display = "block";
	        } else {
	            singleFileUploadSuccess.style.display = "none";
	            singleFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
	        }
	    }

	    xhr.send(formData);
	}

	function uploadMultipleFiles(files) {
	    var formData = new FormData();
	    for(var index = 0; index < files.length; index++) {
	        formData.append("files", files[index]);
	    }

	    var xhr = new XMLHttpRequest();
	    xhr.open("POST", "/uploadMultipleFiles");

	    xhr.onload = function() {
	        console.log(xhr.responseText);
	        var response = JSON.parse(xhr.responseText);
	        if(xhr.status == 200) {
	            multipleFileUploadError.style.display = "none";
	            var content = "<p>All Files Uploaded Successfully</p>";
	            for(var i = 0; i < response.length; i++) {
	                content += "<p>DownloadUrl : <a href='" + response[i].fileDownloadUri + "' target='_blank'>" + response[i].fileDownloadUri + "</a></p>";
	            }
	            multipleFileUploadSuccess.innerHTML = content;
	            multipleFileUploadSuccess.style.display = "block";
	        } else {
	            multipleFileUploadSuccess.style.display = "none";
	            multipleFileUploadError.innerHTML = (response && response.message) || "Some Error Occurred";
	        }
	    }

	    xhr.send(formData);
	}

	singleUploadForm.addEventListener('submit', function(event){
	    var files = singleFileUploadInput.files;
	    if(files.length === 0) {
	        singleFileUploadError.innerHTML = "Please select a file";
	        singleFileUploadError.style.display = "block";
	    }
	    uploadSingleFile(files[0]);
	    event.preventDefault();
	}, true);


	multipleUploadForm.addEventListener('submit', function(event){
	    var files = multipleFileUploadInput.files;
	    if(files.length === 0) {
	        multipleFileUploadError.innerHTML = "Please select at least one file";
	        multipleFileUploadError.style.display = "block";
	    }
	    uploadMultipleFiles(files);
	    event.preventDefault();
	}, true);


	</script>
   
</body>

</html>