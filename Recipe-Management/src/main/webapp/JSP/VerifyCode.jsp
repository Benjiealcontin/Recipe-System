<!DOCTYPE html>
<%@page import="java.util.*"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Recipe Management System</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<script src="Javascript/Validation.js"></script>
<link rel="stylesheet" href="/css/register.css">
<style>

.login-form {
	width: 340px;
	margin: 50px auto;
	font-size: 15px;
}

.login-form form {
	margin-bottom: 15px;
	background: #f7f7f7;
	box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
	padding: 30px;
}

.login-form h2 {
	margin: 0 0 15px;
}

.form-control, .btn {
	min-height: 38px;
	border-radius: 2px;
}

.btn {
	font-size: 15px;
	font-weight: bold;
}
</style>
</head>
<body>
	<div class="login-form">
		<form action="/api/register" method="post"
			onSubmit="return validation();" enctype="multipart/form-data">
			<h2 class="text-center">Verifying Code</h2>
 		 <span id="messages" style="color: red"> ${error }</span> <br>
 		 
 		 			<div class="form-group">
				<input type="text" class="form-control" name="authcode"
					placeholder="Enter the Verification code" required="required">
			</div>
			<div class="form-group">
				<input type="hidden" class="form-control" name="username" value="${username}"
					placeholder="Username" required="required">
			</div>
			<br>
			<div class="form-group">
				<input type="hidden" class="form-control" name="email"  value="${email}"
					placeholder="Email" required="required">
			</div>
			<br>
			<div class="form-group">
				<input type="hidden" class="form-control" id="pass" value="${password}"
					name="password" placeholder="Password" required="required">
				<span id="messages" style="color: red"> </span> <br>
			</div>
			<div class="form-group">
				<input type="hidden" class="form-control" id="pass2" value="${password}"
					placeholder="Confirm Password" required="required"> <span
					id="message" style="color: red"> </span> <br>
	
			</div>
			<br>
			<br>
			<br>
			<div class="profile-pic-div">
				<img src="/images/image.jpg" id="photo"> <input type="file"
					name="file" id="file" > <label
					for="file" id="uploadBtn">Choose Photo</label>

			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary btn-block">Register</button>
			</div>
		</form>
		<p class="text-center">
			<a href="login">Already Have an account?</a>
		</p>
	</div>
		<script>
//declearing html elements

const imgDiv = document.querySelector('.profile-pic-div');
const img = document.querySelector('#photo');
const file = document.querySelector('#file');
const uploadBtn = document.querySelector('#uploadBtn');

//if user hover on img div 

imgDiv.addEventListener('mouseenter', function(){
    uploadBtn.style.display = "block";
});

//if we hover out from img div

imgDiv.addEventListener('mouseleave', function(){
    uploadBtn.style.display = "none";
});

//lets work for image showing functionality when we choose an image to upload

//when we choose a foto to upload

file.addEventListener('change', function(){
    //this refers to file
    const choosedFile = this.files[0];

    if (choosedFile) {

        const reader = new FileReader(); //FileReader is a predefined function of JS

        reader.addEventListener('load', function(){
            img.setAttribute('src', reader.result);
        });

        reader.readAsDataURL(choosedFile);

        //Allright is done

        //please like the video
        //comment if have any issue related to vide & also rate my work in comment section

        //And aslo please subscribe for more tutorial like this

        //thanks for watching
    }
});
</script>
</body>

</html>