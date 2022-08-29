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
      <img src="../images/manok.jpg" class="img-thumbnail" alt="...">
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
				<li>1 whole chicken, cut into serving pieces</li>
				<li>1 cup of soy sauce</li>
				<li>5 cloves of garlic, minced</li>
				<li>1/4 cup of calamansi juice</li>
				<li>salt and pepper to taste</li>
				<li>cooking oil</li>
				</ul>
			</td>
            <td>
				<ol>
				<li>Place the chicken in a pot or large bowl.</li>
				<li>Add the soy sauce, minced garlic, lemon juice, salt and pepper to the bowl then mix it evenly with the chicken.</li>
				<li>Put the chicken in the refrigerator to marinate for at least 30 minutes before cooking.</li>
				<li>Heat about 2 inches of cooking oil over medium heat in a medium-size frying pan or pot.</li>
				<li>Remove the chicken from th refrigerator when the oil is hot enough to start cooking (about 370 degrees F if you're using an oil thermometer).</li>
				<li>Carefully place 2 or 3 pieces of chicken in the hot oil using tongs.</li>
				<li>Turn each piece of chicken over every minute or two to cook each side.</li>
				<li>Remove each piece of chicken when the skin turns a nice golden brown.</li>
				<li>Poke the meaty parts of the chicken down to the bone using a small knife. If the juice that runs out is pink in color, put the chicken back in the oil to fry a little bit longer then check again until the juice runs clear.</li>
				<li>Place the finished chicken on a plate covered with paper towels to absorb any excess oil.</li>
				<li>Repeat steps 6 through 10 with the remaining uncooked chicken.</li>
				<li>Serve hot with rice or your choice of sides.</li>
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