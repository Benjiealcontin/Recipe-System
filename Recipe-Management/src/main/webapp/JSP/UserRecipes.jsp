<!DOCTYPE html>
<%@page import="com.operation.Service.RequestData"%>
<%@page import ="java.util.*" %>
    <%@page import ="com.operation.Service.ImageRequest"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recipe Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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
                    <a href="/userpage" class="nav-item nav-link">Home</a>
                    <a href="#" class="nav-item nav-link active">Your Recipes</a>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">Messages</a>
                        <div class="dropdown-menu">
                            <a href="#" class="dropdown-item">Inbox</a>
                            <a href="#" class="dropdown-item">Sent</a>
                            <a href="#" class="dropdown-item">Drafts</a>
                        </div>
                        
                    </div>
                    <a href="/userpage/make/recipe" class="btn btn-primary">Make your own Recipes</a> 
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
<div class="m-4">

    <table class="table">
        <thead class="table-dark">
            <tr>
            	<th>id</th>
                <th>Recipe Name</th>
                <th>Meat</th>
                <th>Vegetables</th>
                <th>Spices and Herbs</th>
                <th>Procedures</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
				 <%
				List<RequestData> dataList = (List<RequestData>)request.getAttribute("data");
					for(int i = 0; i<dataList.size(); i++){		
				%>
            <tr>
        	    <td><%out.print(dataList.get(i).getId()); %></td>
                <td><%out.print(dataList.get(i).getRecipename()); %></td>
                <td><%out.print(dataList.get(i).getMeat()); %></td>
                <td><%out.print(dataList.get(i).getVegetables()); %></td>
                <td><%out.print(dataList.get(i).getSpicesAndherbs()); %></td>
                <td><%out.print(dataList.get(i).getProcedures()); %></td>
                <td>
                 <a href="/user/${userID}/editRecipes/?id=<%out.print(dataList.get(i).getId()); %>" class="edit" title="Edit" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                 <a href="/user/${userID}/deleteRecipes/?id=<%out.print(dataList.get(i).getId()); %>" class="confirmation" title="Delete" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
				</td>
            </tr>
            <%} %>
        </tbody>
    </table>
</div>
<footer class="page-footer font-small blue">

  <!-- Copyright -->
  <div class="footer-copyright text-center py-3">© 2020 Copyright:
    <a href="/"> MDBootstrap.com</a>
  </div>
  <!-- Copyright -->

</footer>
<script type="text/javascript">
    var elems = document.getElementsByClassName('confirmation');
    var confirmIt = function (e) {
        if (!confirm('Are you sure you want to delete this recipes?')) e.preventDefault();
    };
    for (var i = 0, l = elems.length; i < l; i++) {
        elems[i].addEventListener('click', confirmIt, false);
    }
</script>
</body>
</html>