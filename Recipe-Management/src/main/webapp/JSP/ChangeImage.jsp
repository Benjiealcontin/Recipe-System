
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import ="java.util.*" %>
        <%@page import ="com.operation.Model.User"%>
    <%@page import ="com.operation.Service.ImageRequest"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Recipe Management System</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="/css/menu.css" rel="stylesheet" />
        <link rel="stylesheet" href="/css/image.css">
    </head>
    <body>
    <h1>${userID}</h1>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Settings</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/t/${userID}/user/editProfile">Dashboard</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/t/${userID}/changeimage">Change Profile</a>
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="/changepassword">Change Password</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="btn btn-primary" id="sidebarToggle">Menu</button>
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent" Style="margin-right: 50px;">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item active"><a class="nav-link" href="/userpage">Home</a></li>
                                <li class="nav-item active"><a class="nav-link" href="/t/${userID}/user/recipe">Your Recipes</a></li>
                                <li class="nav-item dropdown">
                   <%
                   List<ImageRequest> image = (List<ImageRequest>)session.getAttribute("userimages");
				        if(!image.isEmpty())  {
				        	for(int i = 0; i < image.size(); i++){
				    %>            				    
				        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="data:image/png;base64,<% out.println(image.get(i).getImage());%>" id="photo1" 	width="40" height="40" class="rounded-circle"></a>
				    <%
				        	}
				        } else {

				    %>

                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="${userimages2 }" width="40" height="40" class="rounded-circle"></a>
                         <%} %>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="/" class="dropdown-item">Log out</a>
                        </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">
                    <h1 class="mt-4">Change Profile Picture</h1>

<div class="profile-pic-div">
  <img src="image.jpg" id="photo">
  <input type="file" id="file">
  <label for="file" id="uploadBtn">Choose Photo</label>
</div>















            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="/Javascript/menu.js"></script>
    </body>
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

//Save to the storage
document.querySelector("#file").addEventListener("change", function(){
	console.log(this.files);
	
	const reader = new FileReader();
	
	reader.addEventListener("load", () => {
	
	localStorage.setItem("recent-image", reader.result);	
	});
	
	reader.readAsDataURL(this.files[0]);
});

//Display into the html
document.addEventListener("DOMContentLoaded", () => {
	const recentImageDataUrl = localStorage.getItem("recent-image");
	
	if(recentImageDataUrl){
		document.querySelector("#photo").setAttribute("src", recentImageDataUrl);
		document.querySelector("#photo1").setAttribute("src", recentImageDataUrl);
	
	}

});

</script>
</html>
