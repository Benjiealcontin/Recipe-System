<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@page import ="java.util.*" %>
    <%@page import ="com.operation.Service.ImageRequest"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recipe Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0-beta2/css/bootstrap-select.min.css" integrity="sha512-mR/b5Y7FRsKqrYZou7uysnOdCIJib/7r5QeJMFvLNHNhtye3xJp1TdJVPLtetkukFn227nKpXD9OjUc09lx97Q==" crossorigin="anonymous"
  referrerpolicy="no-referrer" />
  
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.14.0-beta2/js/bootstrap-select.min.js" integrity="sha512-FHZVRMUW9FsXobt+ONiix6Z0tIkxvQfxtCSirkKc5Sb4TKHmqq1dZa8DphF0XqKb3ldLu/wgMa8mT6uXiLlRlw==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<style>
.delete {
margin-top:10px;
}
</style>
<body>
<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">Recipe Management System</a>
            <button type="button" class=	"navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="/userpage" class="nav-item nav-link active">Home</a>
                    <a href="/t/${userID}/user/recipe" class="nav-item nav-link">Your Recipes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Messages</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="#" class="dropdown-item">Sent</a>
                            <a href="#" class="dropdown-item">Drafts</a>
                        </div>
                    </div>
                </div>
                <div class="navbar-nav ms-auto" style="margin-right: 100px;">
                <div class="nav-item dropdown">
                   <%
                   List<ImageRequest> image = (List<ImageRequest>)session.getAttribute("userimages");
				        if(!image.isEmpty())  {
				        	for(int i = 0; i < image.size(); i++){
				    %>            				    
				        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="data:image/png;base64,<% out.println(image.get(i).getImage());%>" width="40" height="40" class="rounded-circle"></a>
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
<h1>${userID}</h1>

<div class="container" style="margin-top: 80px">
    <form action="/api/recipes" method="post">
        <div class="mb-3">
            <label class="form-label" for="inputEmail">Name of Recipe</label>
            <input type="hidden" class="form-control" id="inputEmail" name="cp_fk" value="${userID}" required>
            <input type="text" class="form-control" id="inputEmail" name="recipename" placeholder="Recipes name" required>
        </div>
        <div class="mb-3">
  <div class="row align-items-center">
      <div class="col">
              <label class="form-label" for="inputPassword">Meat</label><br>
  		<select class="selectpicker" name="meat"  id="meat" multiple aria-label="size 3 select example">
   		<option value="Pork">Pork</option>
   		 <option value="Fish">Fish</option>
   		 <option value="beef">beef</option>
   		 <option value="Chicken">Chicken</option>
   		 <option value="Lamb">Lamb</option>
   		 <option value="Grass Fed Chicken">Grass Fed Chicken</option>
   		 <option value="Turkey">Turkey</option>
   		 <option value="Meat Stock">Meat Stock</option>
 		 </select>
    </div>
    
    <div class="col">
              <label class="form-label" for="inputPassword">Vegetables</label><br>
  		<select class="selectpicker" name="vegetables"  id="vegetables" multiple aria-label="size 3 select example">
   		<option value="Carrot">Carrot</option>
   		 <option value="Broccoli">Broccoli</option>
   		 <option value="Cabbage">Cabbage</option>
   		 <option value="Cucumber">Cucumber</option>
   		 <option value="Mushroom">Mushroom</option>
   		 <option value="Potato">Potato</option>
   		 <option value="Pumpkin">Pumpkin</option>
   		 <option value="Tomato">Tomato</option>
   		  <option value="Squash">Squash</option>
   		 <option value="Radish">Radish</option>
   		 <option value="Eggplant dip">Eggplant dip</option>
   		 <option value="Corn or sweet corn">Corn or sweet corn</option>
   		 <option value="Italian pasta salad">Italian pasta salad</option>
   		 <option value="Celeriac">Celeriac</option>
   		 <option value="Cauliflower">Cauliflower</option>
   		 <option value="Bean">Bean</option>
 		 </select>
    </div>

    <div class="col">
              <label class="form-label" for="inputPassword">Spices and Herbs</label><br>
  		<select class="selectpicker" name="spicesAndherbs"  id="pets" multiple aria-label="size 3 select example">
   		<option value="Salt">Salt</option>
   		 <option value="Lemongrass">Lemongrass</option>
   		 <option value="Red Chilli">Red Chilli</option>
   		 <option value="Union">Union</option>
   		 <option value="Ginger">Ginger</option>
   		 <option value="Pepper">Black Pepper</option>
   		 <option value="Paprika">Paprika</option>
   		 <option value="Mustard Powder">Mustard Powder</option>
 		 </select>
    </div>
  </div>
</div>
            <label class="form-label" for="inputEmail">Procedures</label>
<div class="container1">
    <button id ="add" class="btn btn-primary">Add New Steps &nbsp; 
      <span style="font-size:16px; font-weight:bold;">+ </span>
    </button><br><br>
    <div><input type="text" class="form-control" id="inputEmail" name="procedures" placeholder="Enter a Steps" required></div><br>
</div>

        <button type="submit" class="btn btn-primary">Let's Cook your Recipe</button>
    </form>
    
</div>

<Script>
$(document).ready(function() {
    var max_fields = 10;
    var wrapper = $(".container1");
    var add_button = document.getElementById('add');
    var delete_button = document.getElementById('delete');

    var x = 1;
    $(add_button).click(function(e) {
        e.preventDefault();
        if (x < max_fields) {
            x++;
            $(wrapper).append('<div><input type="text" class="form-control" id="inputEmail" name="procedures" placeholder="Add new Step" required/><button class="btn btn-primary delete">Delete</button></div><br>'); //add input box
        } else {
            alert('You Reached the limits')
        }
    });

    $(wrapper).on("click", ".delete", function(e) {
        e.preventDefault();
        $(this).parent('div').remove();
        x--;
    })
});
</Script>
</body>
</html>