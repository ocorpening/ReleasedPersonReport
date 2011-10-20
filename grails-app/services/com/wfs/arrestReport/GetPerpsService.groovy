package com.wfs.arrestReport

import com.wfs.arrestReport.ArrestData 
import groovy.sql.Sql 
import java.text.SimpleDateFormat 

class GetPerpsService
{
	static transactional = true
	def dataSource
	
	def getPerpsReleased(fromDate, toDate)
	{
		// need date in this pattern '2010-12-01 00:00:00'
		SimpleDateFormat formatter;
		formatter = new SimpleDateFormat("yyyy-MM-dd");
		String formattedFromDate = formatter.format(fromDate);
		String formattedToDate = formatter.format(toDate);
		def db = new Sql(dataSource)
		//select distinct a.name,a.charge_Code,a.charge_Wording,a.charge_Level,a.case_Number,a.arrest_date,b.release_date,a.booking_date,b.bond_Amount,a.street,a.zip
		def result = db.rows("select name, booking_number, charge_Code, charge_Wording, "
			+ "charge_Level, case_Number, arrest_date, release_date, booking_date, bond_Amount, "
			+ "address_number, city, street, zip from arrest_data where release_date >= '" + formattedFromDate + " 00:00:00'"
			+ "and release_date <= '" + formattedToDate + " 00:00:00'")
		// reverse "lastname, first middle" and put into "first middle last" without comma, single spaced
		// concatenate street number and name
		result.each 
		{
			try
			{
				def name = it.name.trim().split(",")
				it.name = name[1] + " " + name[0]
				it.street = it.address_number + " " + it.street
			}
			catch(NullPointerException e)
			{
				println "null pointer exception: " + e.getMessage()
			}
			catch(ArrayIndexOutOfBoundsException e)
			{
				println "null pointer exception: " + e.getMessage()
			}
		}
		[arrestDataInstanceList: result, arrestDataInstanceTotal: result.count(), fromDate: fromDate, toDate:toDate]
	}
	def getPerpsReleasedList(fromDate, toDate)
	{
		def results = ArrestData.withCriteria 
		{
		    between('releaseDate', fromDate, toDate)
		}.list()
		[arrestDataInstanceList: results]
	}
}
