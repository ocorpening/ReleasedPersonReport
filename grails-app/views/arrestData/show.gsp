
<%@ page import="com.wfs.arrestReport.ArrestData" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'arrestData.label', default: 'ArrestData')}" />
        <title><g:message code="default.show.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.show.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <div class="dialog">
                <table>
                    <tbody>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.id.label" default="Id" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "id")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.addressAli.label" default="Address Ali" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "addressAli")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.addressNumber.label" default="Address Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "addressNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.addressPrefix.label" default="Address Prefix" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "addressPrefix")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.addressSuffix.label" default="Address Suffix" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "addressSuffix")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.arrestDate.label" default="Arrest Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${arrestDataInstance?.arrestDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.bondAmount.label" default="Bond Amount" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "bondAmount")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.bookingDate.label" default="Booking Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${arrestDataInstance?.bookingDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.bookingNumber.label" default="Booking Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "bookingNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.caseNumber.label" default="Case Number" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "caseNumber")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.chargeCode.label" default="Charge Code" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "chargeCode")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.chargeLevel.label" default="Charge Level" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "chargeLevel")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.chargeWording.label" default="Charge Wording" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "chargeWording")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.city.label" default="City" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "city")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.disposition.label" default="Disposition" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "disposition")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.dob.label" default="Dob" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${arrestDataInstance?.dob}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.name.label" default="Name" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "name")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.race.label" default="Race" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "race")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.reason.label" default="Reason" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "reason")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.releaseDate.label" default="Release Date" /></td>
                            
                            <td valign="top" class="value"><g:formatDate date="${arrestDataInstance?.releaseDate}" /></td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.sex.label" default="Sex" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "sex")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.spn.label" default="Spn" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "spn")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.state.label" default="State" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "state")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.street.label" default="Street" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "street")}</td>
                            
                        </tr>
                    
                        <tr class="prop">
                            <td valign="top" class="name"><g:message code="arrestData.zip.label" default="Zip" /></td>
                            
                            <td valign="top" class="value">${fieldValue(bean: arrestDataInstance, field: "zip")}</td>
                            
                        </tr>
                    
                    </tbody>
                </table>
            </div>
            <div class="buttons">
                <g:form>
                    <g:hiddenField name="id" value="${arrestDataInstance?.id}" />
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'default.button.edit.label', default: 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" /></span>
                </g:form>
            </div>
        </div>
    </body>
</html>
