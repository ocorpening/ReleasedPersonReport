
<%@ page import="com.wfs.arrestReport.ArrestData" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
		<export:resource />
        <g:set var="entityName" value="${message(code: 'arrestData.label', default: 'ArrestData')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
		<g:javascript src="dojo-release-1.4.3-src/dojo/dojo.js" djConfig="parseOnLoad: true"></g:javascript>
		<script type="text/javascript">
			dojo.require("dijit.Tooltip");
			dojo.require("dijit.TitlePane");
			dojo.addOnLoad(function()
			{
				new dijit.Tooltip({label: "An Owen Corpening application.", connectId:["datesTable"]})
			});
		</script>
    </head>
    <body>
    	<g:form controller="arrestData" method="GET">
	        <div class="nav">
	            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
				<g:actionSubmit value="refresh" action="list" />
	        </div>
	        <div class="body">
	            <h1>Range of Dates in Report</h1>
	            <div>
	                <table border="1" width="50%" id="datesTable">
	                    <thead>
	                        <tr>
	                    		<th>From Date</th>
	                    		<th>To Date</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                        <tr>
					            <td><g:datePicker id="fromDate" name="fromDate" value="${fromDate}" precision="day" noSelection="['':'-Choose-']"/></td>
					            <td><g:datePicker id="toDate" name="toDate" value="${toDate}" precision="day" noSelection="['':'-Choose-']"/></td>
					        </tr>
						</tbody>
					</table>
				</div>
	            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
	            <g:if test="${flash.message}">
	            	<div class="message">${flash.message}</div>
	            </g:if>
				<export:formats parameters="fromDate:${fromDate}, toDate:${toDate}" name="exportMenu"/>
	            <div class="list" dojoType="dijit.TitlePane" width="100%" title="Perpetrator Details">
	                <table>
	                    <thead>
	                        <tr>
	                    		<th>booking number</th>
	                    		<th>name</th>
	                    		<th>charge wording</th>
	                    		<th>charge_level</th>
	                    		<th>case number</th>
	                    		<th>arrest date</th>
	                    		<th>booking date</th>
	                    		<th>release date</th>
	                    		<th>bond amount</th>
	                    		<th>city</th>
	                    		<th>street</th>
	                    		<th>zip</th>
	                        </tr>
	                    </thead>
	                    <tbody>
	                    <g:each in="${arrestDataInstanceList}" status="i" var="arrestDataInstance">
	                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
	                            <td><g:link action="show" id="${arrestDataInstance.bookingNumber}">${arrestDataInstance.bookingNumber}</g:link></td>
	                            <td>${arrestDataInstance.name}</td>
	                        	<td>"${arrestDataInstance.chargeWording}"</td>
	                        	<td>"${arrestDataInstance.chargeLevel}"</td>
	                        	<td>"${arrestDataInstance.caseNumber}"</td>
	                        	<td><g:formatDate format="yyyy-MM-dd" date="${arrestDataInstance.arrestDate}"/></td>
	                        	<td><g:formatDate format="yyyy-MM-dd" date="${arrestDataInstance.bookingDate}"/></td>
	                        	<td><g:formatDate format="yyyy-MM-dd" date="${arrestDataInstance.releaseDate}"/></td>
	                        	<td>"${arrestDataInstance.bondAmount}"</td>
	                        	<td>"${arrestDataInstance.city}</td>
	                        	<td>"${arrestDataInstance.street}"</td>
	                        	<td>"${arrestDataInstance.zip}"</td>
	                        </tr>
	                    </g:each>
	                    </tbody>
	                </table>
	            </div>
	            <div class="paginateButtons">
	                <g:paginate total="${arrestDataInstanceTotal}" />
	            </div>
	        </div>
        </g:form>
    </body>
</html>
