// =======================hiding the message div by default======================

$(document).ready(function()
{
	if ($("#alertSuccess").text().trim() == "")
 	{
 		$("#alertSuccess").hide();
 	}
 	$("#alertError").hide();
 	
});


//========================== SAVE ========================

$(document).on("click", "#btnSaveConsumption", function(event)
{
	
	// -----Clearing alert divs-----
 	$("#alertSuccess").text("");
 	$("#alertSuccess").hide();
 	$("#alertError").text("");
 	$("#alertError").hide();
 	
	// ------Form validation----
	var status = consumptionFormValidation();
	if (status != true)
 	{
	
		$("#alertError").text(status); // return the condtional error message 
		$("#alertError").show();
 		return;
 	}
 	
	var type = ($("#hideSaveBtn").val() == "") ? "POST" : "PUT";
	
 	$.ajax(
 	{
 		url : "ConsumerAPI",
 		type : type,
 		data : $("#consumption_form").serialize(),            // data to be sent to the server-- serialize will create url encoded string value from the form.
 		dataType : "text",                           		  // type of that data u expect from the server
 		complete : function(response, status)       		  // function to run after request is finished 
 		{
 			onCompletionSaveConsumption(response.responseText, status);
		
 		}
 	});
});

function onCompletionSaveConsumption(response, status)
{
	if (status == "success")
 	{
		
 		var resultSet = JSON.parse(response);
 		if (resultSet.status.trim() == "success")
 		{
	 		$("#alertSuccess").text("Successfully saved.");
	 		$("#alertSuccess").show();
	 		$("#view_grid").html(resultSet.data);
		
 		
 		} else if (resultSet.status.trim() == "error")
 		{
	 		$("#alertError").text(resultSet.data);
	 		$("#alertError").show();
 		}
 	
 	} else if (status == "error")
 	{
		 $("#alertError").text("Error while saving.");
		 $("#alertError").show();
 	} else
 	{
		 $("#alertError").text("Unknown error while saving..");
		 $("#alertError").show();
 	}
 
	$("#hideSaveBtn").val("");
	$("#consumption_form")[0].reset();
}




// ==============CLIENT- model validation ===================
function consumptionFormValidation()
{
	
		// account number null validation
		if ($("#Account_No").val().trim() == "")
 		{
			return "Insert Account Number.";
 		}
 		
		// Reading number null validation
		if ($("#Reading").val().trim() == "")
 		{
 			return "Insert the reading .";
 		}
 		
		// Date number null validation
		if ($("#Date").val().trim() == "")
 		{
 			return "Insert the date.";
 		}

		return true;
}