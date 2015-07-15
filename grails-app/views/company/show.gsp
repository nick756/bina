
<%@ page import="com.bina.structure.Company" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'company.label', default: 'Company')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-company" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-company" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list company">
			
				<g:if test="${companyInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="company.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${companyInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.rocNo}">
				<li class="fieldcontain">
					<span id="rocNo-label" class="property-label"><g:message code="company.rocNo.label" default="Roc No" /></span>
					
						<span class="property-value" aria-labelledby="rocNo-label"><g:fieldValue bean="${companyInstance}" field="rocNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="company.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:fieldValue bean="${companyInstance}" field="address"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.city}">
				<li class="fieldcontain">
					<span id="city-label" class="property-label"><g:message code="company.city.label" default="City" /></span>
					
						<span class="property-value" aria-labelledby="city-label"><g:fieldValue bean="${companyInstance}" field="city"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.state}">
				<li class="fieldcontain">
					<span id="state-label" class="property-label"><g:message code="company.state.label" default="State" /></span>
					
						<span class="property-value" aria-labelledby="state-label"><g:link controller="state" action="show" id="${companyInstance?.state?.id}">${companyInstance?.state?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.dateCreated}">
				<li class="fieldcontain">
					<span id="dateCreated-label" class="property-label"><g:message code="company.dateCreated.label" default="Date Created" /></span>
					
						<span class="property-value" aria-labelledby="dateCreated-label"><g:formatDate date="${companyInstance?.dateCreated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.lastUpdated}">
				<li class="fieldcontain">
					<span id="lastUpdated-label" class="property-label"><g:message code="company.lastUpdated.label" default="Last Updated" /></span>
					
						<span class="property-value" aria-labelledby="lastUpdated-label"><g:formatDate date="${companyInstance?.lastUpdated}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${companyInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="company.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="businessType" action="show" id="${companyInstance?.type?.id}">${companyInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:companyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${companyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
