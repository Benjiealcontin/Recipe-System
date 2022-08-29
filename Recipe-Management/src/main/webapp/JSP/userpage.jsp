<!DOCTYPE html>
<html lang="en">
        <%@page import ="java.util.*" %>
    <%@page import ="com.operation.Service.ImageRequest"%>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recipe Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<h1>${userID}</h1>
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">Recipe Management System</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="#" class="nav-item nav-link active">Home</a>
                    <a href="/t/${userID}/user/recipe" class="nav-item nav-link">Your Recipes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Messages</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="#" class="dropdown-item">Sent</a>
                            <a href="#" class="dropdown-item">Drafts</a>
                        </div>
                    </div>
                    <a href="/userpage/make/recipe/" class="btn btn-primary">Make your own Recipes</a> 
                </div>
                <div class="navbar-nav ms-auto" style="margin-right: 100px;">
                <div class="nav-item dropdown">
                   <%
                   List<ImageRequest> image = (List<ImageRequest>)session.getAttribute("userimages");
				        if(!image.isEmpty())  {
				        	for(int i = 0; i < image.size(); i++){
				    %>            				    
				        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="data:image/png;base64,<% out.println(image.get(i).getImage());%>"  id="photo" width="40" height="40" class="rounded-circle"></a>
				    <%
				        	}
				        } else {

				    %>

                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="${userimages2 }" width="40" height="40" class="rounded-circle"></a>
                         <%} %>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="/t/${userID}/user/editProfile" class="dropdown-item">Edit Profile</a>
                            <a href="/" class="dropdown-item">Log out</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>
</div>
	<div class="container">
  <div class="row align-items-center">
    <div class="col">
          <div class="card" style="width: 300px;">
        <img src="images/prito.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Pritong Isda</h5>
            <p class="card-text">"Pritong isda" or fried fish is definitely one of the most common Filipino fish dishes. And so for practical reasons. It keeps longer even without refrigeration, and it can be made part or turned into other dishes.</p>
            <a href="Recipes/Pritong-isda" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
    <div class="col">
          <div class="card" style="width: 300px;">
        <img src="images/manok.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Pritong Manok</h5>
            <p class="card-text">Ang pritong manok (Ingles: Southern fried chicken o fried chicken lang mismo) ay isang ulam na binubuo ng mga hiwa ng manok na inilubog sa tinimplahang batter at ipiniprito. Malutong ang balat nitong ulam habang pinapanatili sa karne ang mga katas.</p>
            <a href="Recipes/Pritong-manok" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
    <div class="col">
          <div class="card" style="width: 300px;">
        <img src="images/kinilaw.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Kinilaw</h5>
            <p class="card-text">Kinilaw (pronounced [kɪnɪˈlaʊ] or locally [kɪˈnɪlaʊ], literally "eaten raw") is a raw seafood dish and preparation method native to the Philippines. It is also referred to as Philippine ceviche due to its similarity to the Latin American dish ceviche.</p>
            <a href="Recipes/Kinilaw" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
  </div>
  <div class="row align-items-end" style="margin-top: 10px;">
    <div class="col">
                <div class="card" style="width: 300px;">
        <img src="images/sugba.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Sugba na Isda</h5>
            <p class="card-text">Sinuglaw is a dish composed of grilled pork belly and fish ceviche. This can be considered as a main dish or an appetizer. </p>
            <a href="Recipes/Sugba-isda" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
    <div class="col">
                     <div class="card" style="width: 300px;">
        <img src="images/sinigang.png" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Sinigang na Isda</h5>
            <p class="card-text">Sinigang is a Filipino soup or stew characterized by its sour and savory taste. It is most often associated with tamarind (Filipino: sampalok), although it can use other sour fruits and leaves as the souring agent. It is one of the more popular dishes in Filipino cuisine.</p>
            <a href="Recipes/Sinigang" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
    <div class="col">
                      <div class="card" style="width: 300px;">
        <img src="images/daing.jpg" class="card-img-top" alt="Sample Image">
        <div class="card-body text-center">
            <h5 class="card-title">Bulad na Isda</h5>
            <p class="card-text">Daing, tuyô, or bilad (literally "sun-dried" or "sun-baked") are dried fish from the Philippines.[1] Fish prepared as daing are usually split open (though they may be left whole), gutted, salted liberally, and then sun and air-dried.</p>
            <a href="Recipes/Bulad-isda" class="btn btn-primary">Recipes</a>
        </div>
    </div>
    </div>
  </div>
</div>
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
</body>
</html>