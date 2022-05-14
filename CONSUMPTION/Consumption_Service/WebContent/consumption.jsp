<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ page import ="model.Consumption"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Views/css/bootstrap.min.css">
 
  <script src="Views/js/jquery-3.4.0.min.js"></script>
  <script src="Views/js/bootstrap.min.js"></script>
  
 
  <script src = "Components/clientController.js" type="text/javascript"></script>
  
  
</head>
<body>

<div class="container">
<h3>Electro GRID</h3>

	<div class="row mt-5 mb-5 ">
		
	    <div class="col mt-5 mb-5">
	    <h5> Consumption Service </h5>
	        <form id="consumption_form" name="consumption_form" method="post" >
	            <div class="form-group">
	              <label for="Account_No">Account No:</label>
	              <input type="text" class="form-control" id="Account_No" placeholder="Account_No" name="Account_No">
	            </div>
	            
	            <div class="form-group">
	              <label for="Reading">Reading:</label>
	              <input type="text" class="form-control" id="Reading" placeholder="Reading" name="Reading">
	            </div>
	            
	            <div class="form-group">
	              <label for="Date">Date:</label>
	              <input type="text" class="form-control" id="Date" placeholder="Date" name="Date">
	            </div>
	            
	            <div class="form-group d-none">
	              <label for="Consumption_ID">Consumption ID:</label>
	              <input type="text" class="form-control" id="Consumption_ID" placeholder="Consumption_ID" name="Consumption_ID">
	            </div>
	            
	            <div id="alertSuccess" class="alert alert-success mt-5"></div>
			  	<div id="alertError" class="alert alert-danger mt-5"></div>
			  	
			  	
	           <div class="row mt-5">
		           <div class="col"><button id="btnSaveConsumption" type="button" class="btn btn-success btn-block">Save Details</button></div>
		           <div class="col"><button id="btnClearConsumption" type="reset" class="btn btn-secondary btn-block">Clear</button></div>
		           <div class="col"><button id="btnReloadConsumption" class="btn btn-danger btn-block" onclick="location.reload();">Reload</button></div>
	           </div>
	            
	            
	            <input type="hidden" id="hideSaveBtn" name="hideSaveBtn" value="">
	          </form>
	          
	          
	    </div>
	    
	  </div>
	    
	  
	    
	    <div class="row mb-5 mt-5 border">
	        <div id="view_grid" class="col">
	           <%
	           Consumption consumptionObj = new Consumption();
	           out.print(consumptionObj.readConsumption());
	           %>
	           
	        </div>
	    </div>
	    
	</div>
    



</body>
</html>


