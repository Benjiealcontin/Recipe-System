<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recipe Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">Recipe Management System</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="#" class="nav-item nav-link active">Home</a>
                    <a href="#" class="nav-item nav-link">Profile</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Messages</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="#" class="dropdown-item">Sent</a>
                            <a href="#" class="dropdown-item">Drafts</a>
                        </div>
                    </div>
                    <a href="#" class="nav-item nav-link disabled" tabindex="-1">Reports</a>
                </div>
                <div class="navbar-nav ms-auto">
                    <a href="#" class="nav-item nav-link"><b>logout</b></a>
                </div>
            </div>
        </div>
    </nav>
    <button onclick="location.href='/userpage'" class="btn btn-secondary" style="margin-left: 30px">Go back</button>  
<div class="container" style="margin-top: 50px;">
  <div class="row align-items-center">
    <div class="col">
      <img src="../images/sugba.jpg" class="img-thumbnail" alt="...">
    </div>
    <div class="col">
      <table class="table">
    <thead>
        <tr>
            <th>Ingredients</th>
            <th>Instructions</th>
        </tr>
    </thead>
    <tbody>
            <tr>
            <td>
            	<ul>
				<li>1 piece milkfish bangus, with scales but guts removed</li>
				<li>1 piece tomato ripe, diced</li>
				<li>1 piece red onion diced</li>
				<li>1 piece lemon or 3 pieces calamansi (optional)</li>
				<li>1 tablespoon ginger minced</li>
				<li>2 teaspoons salt</li>
				<li>1/2 teaspoon ground black pepper</li>
				</ul>
			</td>
            <td>
				<ol>
				<li>Wash the milk fish. Pat it dry using a paper towel.</li>
				<li>Open the incision and then rub the salt on the inside of the dish. The fish should have an incision either above or below the belly area.</li>
				<li>Meanwhile, combine tomato, onion, and ginger in a large bowl. Squeeze some lemon juice in and add the ground black pepper. Gently stir.</li>
				<li>Stuff the mixture inside the milkfish.</li>
				<li>Grill the fish in medium heat for about 10 to 12 minutes per side.</li>
				<li>Serve with toyomansi and steamed rice.</li>
				<li>Share and enjoy!</li>
				</ol> 
			</td>
        </tr>
    </tbody>
    </table>
    </div>
  </div>
</div>
</body>
</html>