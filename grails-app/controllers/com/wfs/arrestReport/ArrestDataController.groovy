package com.wfs.arrestReport


import com.wfs.arrestReport.GetPerpsService 
import org.codehaus.groovy.grails.commons.ConfigurationHolder

class ArrestDataController {

    static allowedMethods = [list: "GET", save: "POST", update: "POST", delete: "POST"]
	def GetPerpsService getPerpsService
	def exportService
	
    def index = 
	{
		Date now = new Date()
		//redirect(url: "http://localhost:8080/ReleasedPerpReport/arrestData/list")
    }

    def list = 
	{
		log.debug("Hi mom")
		//params.max = Math.min(params.max ? params.int('max') : 10, 100)
		Date fromDate, toDate 
		Date now = new Date()
		if (params?.toDate)
		{
			println("toDate = " + params.toDate)
			toDate = params.toDate
		}
		else
		{
			toDate = now
		}
		if (params?.fromDate)
		{
			println("fromDate = " + params.fromDate)
			fromDate = params.fromDate
			if (fromDate.after(toDate))
			{
				fromDate = toDate
			}
		}
		else
		{
			fromDate = now - 1
		}
		def data = getPerpsService.getPerpsReleased(fromDate, toDate)
		if(params?.format && params.format != "html")
		{
			response.contentType = ConfigurationHolder.config.grails.mime.types[params.format]
			response.setHeader("Content-disposition", "attachment; filename=books.${params.extension}")
			//List fields = ["name", "releaseDate"]
			// pagination is broken
			//def arrestData = ArrestData.createCriteria().list(max: params.max) {between('releaseDate', fromDate, toDate)}
			def arrestData = ArrestData.createCriteria().list(maxResults: 20000) {between('releaseDate', fromDate - 1, toDate)}
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
			exportService.export(params.format, response.outputStream, arrestData, [:], [:])
		}
		getPerpsService.getPerpsReleased(fromDate, toDate)
    }

    def create = {
        def arrestDataInstance = new ArrestData()
        arrestDataInstance.properties = params
        return [arrestDataInstance: arrestDataInstance]
    }

    def save = {
        def arrestDataInstance = new ArrestData(params)
        if (arrestDataInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), arrestDataInstance.id])}"
            redirect(action: "show", id: arrestDataInstance.id)
        }
        else {
            render(view: "create", model: [arrestDataInstance: arrestDataInstance])
        }
    }

    def show = {
        def arrestDataInstance = ArrestData.findByBookingNumber(params.id)
        if (!arrestDataInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
            redirect(action: "list")
        }
        else {
            [arrestDataInstance: arrestDataInstance]
        }
    }

    def edit = {
        def arrestDataInstance = ArrestData.get(params.id)
        if (!arrestDataInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [arrestDataInstance: arrestDataInstance]
        }
    }

    def update = {
        def arrestDataInstance = ArrestData.get(params.id)
        if (arrestDataInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (arrestDataInstance.version > version) {
                    
                    arrestDataInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'arrestData.label', default: 'ArrestData')] as Object[], "Another user has updated this ArrestData while you were editing")
                    render(view: "edit", model: [arrestDataInstance: arrestDataInstance])
                    return
                }
            }
            arrestDataInstance.properties = params
            if (!arrestDataInstance.hasErrors() && arrestDataInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), arrestDataInstance.id])}"
                redirect(action: "show", id: arrestDataInstance.id)
            }
            else {
                render(view: "edit", model: [arrestDataInstance: arrestDataInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def arrestDataInstance = ArrestData.get(params.id)
        if (arrestDataInstance) {
            try {
                arrestDataInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'arrestData.label', default: 'ArrestData'), params.id])}"
            redirect(action: "list")
        }
    }
}
