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
      <img src="../images/kinilaw.jpg" class="img-thumbnail" alt="...">
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
				<li>1 pounds Tanigue or Tuna skinned and deboned</li>
				<li>1 cup vinegar</li>
				<li>4 pieces calamansi or half of a lemon</li>
				<li>2 thumbs ginger minced</li>
				<li>1 medium red onion minced</li>
				<li>2 pieces green chili or Thai chili, cut into thin slices</li>
				<li>salt</li>
				<li>fresh ground pepper</li>
				</ul>
			</td>
            <td>
				<ol>
				<li>Wash the fish meat and tap dry with paper towels. Cut into 1-inch cubes.</li>
				<li>Place the fish cubes in a bowl. Pour in the vinegar and the juice from calamansi. Season with salt and pepper. Add the ginger, onion, and chili. Toss gently until well blended.</li>
				<li>Cover and marinate for an hour or up to 3 hours in the fridge. The fish should lose its translucent and pinkish color and should turn whiter and opaque.</li>
				<li>transfer to a serving dish and serve immediately.</li>
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