

<%@ page import="com.wfs.arrestReport.ArrestData" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'arrestData.label', default: 'ArrestData')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${arrestDataInstance}">
            <div class="errors">
                <g:renderErrors bean="${arrestDataInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressAli"><g:message code="arrestData.addressAli.label" default="Address Ali" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'addressAli', 'errors')}">
                                    <g:textField name="addressAli" value="${arrestDataInstance?.addressAli}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressNumber"><g:message code="arrestData.addressNumber.label" default="Address Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'addressNumber', 'errors')}">
                                    <g:textField name="addressNumber" value="${arrestDataInstance?.addressNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressPrefix"><g:message code="arrestData.addressPrefix.label" default="Address Prefix" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'addressPrefix', 'errors')}">
                                    <g:textField name="addressPrefix" value="${arrestDataInstance?.addressPrefix}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="addressSuffix"><g:message code="arrestData.addressSuffix.label" default="Address Suffix" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'addressSuffix', 'errors')}">
                                    <g:textField name="addressSuffix" value="${arrestDataInstance?.addressSuffix}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="arrestDate"><g:message code="arrestData.arrestDate.label" default="Arrest Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'arrestDate', 'errors')}">
                                    <g:datePicker name="arrestDate" precision="day" value="${arrestDataInstance?.arrestDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bondAmount"><g:message code="arrestData.bondAmount.label" default="Bond Amount" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'bondAmount', 'errors')}">
                                    <g:textField name="bondAmount" value="${fieldValue(bean: arrestDataInstance, field: 'bondAmount')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bookingDate"><g:message code="arrestData.bookingDate.label" default="Booking Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'bookingDate', 'errors')}">
                                    <g:datePicker name="bookingDate" precision="day" value="${arrestDataInstance?.bookingDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="bookingNumber"><g:message code="arrestData.bookingNumber.label" default="Booking Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'bookingNumber', 'errors')}">
                                    <g:textField name="bookingNumber" value="${fieldValue(bean: arrestDataInstance, field: 'bookingNumber')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="caseNumber"><g:message code="arrestData.caseNumber.label" default="Case Number" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'caseNumber', 'errors')}">
                                    <g:textField name="caseNumber" value="${arrestDataInstance?.caseNumber}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chargeCode"><g:message code="arrestData.chargeCode.label" default="Charge Code" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'chargeCode', 'errors')}">
                                    <g:textField name="chargeCode" value="${arrestDataInstance?.chargeCode}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chargeLevel"><g:message code="arrestData.chargeLevel.label" default="Charge Level" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'chargeLevel', 'errors')}">
                                    <g:textField name="chargeLevel" value="${arrestDataInstance?.chargeLevel}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="chargeWording"><g:message code="arrestData.chargeWording.label" default="Charge Wording" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'chargeWording', 'errors')}">
                                    <g:textField name="chargeWording" value="${arrestDataInstance?.chargeWording}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="city"><g:message code="arrestData.city.label" default="City" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'city', 'errors')}">
                                    <g:textField name="city" value="${arrestDataInstance?.city}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="disposition"><g:message code="arrestData.disposition.label" default="Disposition" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'disposition', 'errors')}">
                                    <g:textField name="disposition" value="${arrestDataInstance?.disposition}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dob"><g:message code="arrestData.dob.label" default="Dob" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'dob', 'errors')}">
                                    <g:datePicker name="dob" precision="day" value="${arrestDataInstance?.dob}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="arrestData.name.label" default="Name" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${arrestDataInstance?.name}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="race"><g:message code="arrestData.race.label" default="Race" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'race', 'errors')}">
                                    <g:textField name="race" value="${arrestDataInstance?.race}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="reason"><g:message code="arrestData.reason.label" default="Reason" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'reason', 'errors')}">
                                    <g:textField name="reason" value="${arrestDataInstance?.reason}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="releaseDate"><g:message code="arrestData.releaseDate.label" default="Release Date" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'releaseDate', 'errors')}">
                                    <g:datePicker name="releaseDate" precision="day" value="${arrestDataInstance?.releaseDate}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="sex"><g:message code="arrestData.sex.label" default="Sex" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'sex', 'errors')}">
                                    <g:textField name="sex" value="${arrestDataInstance?.sex}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="spn"><g:message code="arrestData.spn.label" default="Spn" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'spn', 'errors')}">
                                    <g:textField name="spn" value="${fieldValue(bean: arrestDataInstance, field: 'spn')}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="arrestData.state.label" default="State" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'state', 'errors')}">
                                    <g:textField name="state" value="${arrestDataInstance?.state}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="street"><g:message code="arrestData.street.label" default="Street" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'street', 'errors')}">
                                    <g:textField name="street" value="${arrestDataInstance?.street}" />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="zip"><g:message code="arrestData.zip.label" default="Zip" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: arrestDataInstance, field: 'zip', 'errors')}">
                                    <g:textField name="zip" value="${arrestDataInstance?.zip}" />
                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
