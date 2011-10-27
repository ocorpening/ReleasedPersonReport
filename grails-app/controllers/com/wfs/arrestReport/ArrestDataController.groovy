package com.wfs.arrestReport

import com.wfs.arrestReport.GetPerpsService
import org.codehaus.groovy.grails.commons.ConfigurationHolder

class ArrestDataController
{
	static allowedMethods = [list: "GET", save: "POST", update: "POST", delete: "POST"]
	def GetPerpsService getPerpsService
	def exportService

	def list =
	{
		//params.max = Math.min(params.max ? params.int('max') : 10, 100)
		Date fromDate, toDate, now = new Date()
		toDate = (params?.toDate) ? params.toDate : now;
		fromDate = (params?.fromDate) ? params.fromDate : now - 1
		fromDate = (fromDate.after(toDate)) ? toDate : fromDate
		def arrestData = getPerpsService.getPersonsReleasedList(fromDate, toDate)
		if(params?.format && params.format != "html")
		{
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=books.${params.extension}")
			exportService.export(params.format, response.outputStream, arrestData, [:], [:])
		}
		arrestData
	}
}
