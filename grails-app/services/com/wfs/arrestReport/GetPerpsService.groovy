package com.wfs.arrestReport

import com.wfs.arrestReport.ArrestData
import groovy.sql.Sql
import java.text.SimpleDateFormat

class GetPerpsService
{
	def getPersonsReleasedList(fromDate, toDate)
	{
		def arrestData = ArrestData.createCriteria().list(maxResults: 20000)
		{between('releaseDate', fromDate - 1, toDate)}
		arrestData.each
		{
			try
			{
				def name = it.name.trim().split(",")
				it.name = name[1] + " " + name[0]
				it.street = it.addressNumber + " " + it.street
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
		[arrestDataInstanceList: arrestData, arrestDataInstanceTotal: arrestData.size(), fromDate: fromDate, toDate:toDate]
	}
}
