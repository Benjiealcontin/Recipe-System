<!DOCTYPE html>
<%@page import="java.sql.*" %>
<%@ page import="java.util.Arrays" %>
<%@page import="java.util.*" %>
<%@page import="com.operation.Service.RequestData" %>
    <%@page import ="com.operation.Service.ImageRequest"%>
<%@ page session="true" %>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Recipe Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<div class="m-4">
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <a href="#" class="navbar-brand">Recipe Management System</a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav">
                    <a href="/userpage" class="nav-item nav-link active">Home</a>
                </div>
                <div class="navbar-nav ms-auto" style="margin-right: 100px;">
                <div class="nav-item dropdown">
                                                 <%
                
				 List<ImageRequest> image = (List<ImageRequest>)session.getAttribute("userimages");
                                		for(int i = 0; i < image.size(); i++){
                                			
                                		
                                			
                                		
                %>
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown"><img src="data:image/png;base64,<% out.println(image.get(i).getImage());%>" width="40" height="40" class="rounded-circle"></a>
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
<%-- <%
List<RequestData> dataList = (List<RequestData>)request.getAttribute("data");
	for(int i = 0; i<dataList.size(); i++){
%>
<ol>
<li><%out.print(dataList.get(i).getRecipename()); %></li>
<li><%out.print(dataList.get(i).getVegetables()); %></li>
<li><%out.print(dataList.get(i).getMeat()); %></li>
<li><%out.print(dataList.get(i).getSpicesAndherbs()); %></li>
<li><%out.print(dataList.get(i).getCp_fk()); %></li>
<li><%out.print(dataList.get(i).getProcedures()); %></li>
</ol>
<%} %> --%>

<%
String name = (String)request.getAttribute("recipename");

List<String> m = (List<String>) request.getAttribute("meat");

List<String> v = (List<String>) request.getAttribute("vegetables");

List<String> s = (List<String>) request.getAttribute("spicesAndherbs");

List<String> p = (List<String>) request.getAttribute("procedures");
%>
<div class="container" style="margin-top: 80px">
    
        <div class="mb-3">
            <label class="form-label" for="inputEmail">Name of Recipe</label>
            <input type="email" class="form-control" id="inputEmail"  value="<%=name %>" placeholder="Recipes name" readonly style="height:140%;">
        </div>
        <div class="mb-3">
  <div class="row align-items-center">
    <div class="col">
              <label class="form-label" for="inputPassword">Vegetables</label><br>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" readonly><%for(String meat : m){
            	  
            	  String[] arrSplit = meat.split(",");
            	    for (int i=0; i < arrSplit.length; i++)
            	    {
            	      out.println(arrSplit[i]);
            	    }
              }           	  
              %>

</textarea>
    </div>
    <div class="col">
              <label class="form-label" for="inputPassword">Meat</label><br>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" readonly><%for(String vegetables : v){
            	  String[] arrSplit = vegetables.split(",");
            	    for (int i=0; i < arrSplit.length; i++)
            	    {
            	      out.println(arrSplit[i]);
            	    }
              }           	  
              %>
</textarea>
    </div>
    <div class="col">
              <label class="form-label" for="inputPassword">Spices and Herbs</label><br>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" readonly><%for(String spicesAndherbs : s){
            	  String[] arrSplit = spicesAndherbs.split(",");
            	    for (int i=0; i < arrSplit.length; i++)
            	    {
            	      out.println(arrSplit[i]);
            	    }
              }           	  
              %>
</textarea>
    </div>
  </div>
        </div>
        <div class="mb-3">
  		<label for="exampleFormControlTextarea1" class="form-label">Procedures</label>
              <textarea class="form-control" id="exampleFormControlTextarea1" rows="5" readonly><%for(String procedures : p){
            	  String[] arrSplit = procedures.split(",");
            	    for (int i=0; i < arrSplit.length; i++)
            	    {
            	    	
            	      out.println(arrSplit[i]);
            	    }
              }           	  
              %>
</textarea>

		</div>
        <button onclick="location.href='/userpage'" class="btn btn-primary">Finish</button>
</div>
</body>
</html>