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
      <img src="../images/sinigang.png" class="img-thumbnail" alt="...">
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
				<li>2 lbs pork belly or buto-buto</li>
				<li>1 bunch spinach or kang-kong</li>
				<li>3 tablespoons fish sauce</li>
				<li>12 pieces string beans sitaw, cut in 2 inch length</li>
				<li>2 pieces tomato quartered</li>
				<li>3 pieces chili or banana pepper</li>
				<li>1 tablespoons cooking oil</li>
				<li>2 quarts water</li>
				<li>1 piece onion sliced</li>
				<li>2 pieces taro gabi, quartered</li>
				<li>1 pack sinigang mix good for 2 liters water</li>
				</ul>
			</td>
            <td>
				<ol>
				<li>Heat the pot and put-in the cooking oil</li>
				<li>Sauté the onion until its layers separate from each other</li>
				<li>Add the pork belly and cook until outer part turns light brown</li>
				<li>Put-in the fish sauce and mix with the ingredients</li>
				<li>Pour the water and bring to a boil</li>
				<li>Add the taro and tomatoes then simmer for 40 minutes or until pork is tender</li>
				<li>Put-in the sinigang mix and chili</li>
				<li>Add the string beans (and other vegetables if there are any) and simmer for 5 to 8 minutes</li>
				<li>Put-in the spinach, turn off the heat, and cover the pot. Let the spinach cook using the remaining heat in the pot.</li>
				<li>Serve hot. Share and enjoy!</li>
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