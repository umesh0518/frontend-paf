package com;

import model.Consumption;

import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import com.google.gson.*;
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

@Path("/Consumption")
public class ConsumptionService {
	Consumption ConsumptionObj = new Consumption();

	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readConsumption() {
		return ConsumptionObj.readConsumption();
	}

	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertConsumption(
			@FormParam("Account_No") String Account_No,
			@FormParam("Reading") String Reading,
			@FormParam("Date") String Date) {
		String output = ConsumptionObj.insertConsumption(Account_No, Reading, Date);
		return output;
	}
	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)

	public String updateConsumption(String consumptionData) {
		
		JsonObject ConsumptionObject = new JsonParser().parse(consumptionData).getAsJsonObject();
		
		String Consumption_ID = ConsumptionObject.get("Consumption_ID").getAsString();
		String Account_No = ConsumptionObject.get("Account_No").getAsString();
		String Reading = ConsumptionObject.get("Reading").getAsString();
		String Date = ConsumptionObject.get("Date").getAsString();
		
		String output = ConsumptionObj.updateConsumption(Consumption_ID, Account_No, Reading, Date);
		return output;
	}
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteConsumption(String consumptionData) {
		
		Document doc = Jsoup.parse(consumptionData, "", Parser.xmlParser());

		String Consumption_ID = doc.select("Consumption_ID").text();
		String output = ConsumptionObj.deleteConsumption(Consumption_ID);
		return output;
		
	}
}