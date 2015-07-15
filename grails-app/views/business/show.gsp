
<%@ page import="com.bina.structure.Business" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'business.label', default: 'Business')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-business" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-business" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list business">
			
				<g:if test="${businessInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="business.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${businessInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.rocNo}">
				<li class="fieldcontain">
					<span id="rocNo-label" class="property-label"><g:message code="business.rocNo.label" default="Roc No" /></span>
					
						<span class="property-value" aria-labelledby="rocNo-label"><g:fieldValue bean="${businessInstance}" field="rocNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.industry}">
				<li class="fieldcontain">
					<span id="industry-label" class="property-label"><g:message code="business.industry.label" default="Industry" /></span>
					
						<span class="property-value" aria-labelledby="industry-label"><g:link controller="industry" action="show" id="${businessInstance?.industry?.id}">${businessInstance?.industry?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.mofNo}">
				<li class="fieldcontain">
					<span id="mofNo-label" class="property-label"><g:message code="business.mofNo.label" default="Mof No" /></span>
					
						<span class="property-value" aria-labelledby="mofNo-label"><g:fieldValue bean="${businessInstance}" field="mofNo"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.authCapital}">
				<li class="fieldcontain">
					<span id="authCapital-label" class="property-label"><g:message code="business.authCapital.label" default="Auth Capital" /></span>
					
						<span class="property-value" aria-labelledby="authCapital-label"><g:fieldValue bean="${businessInstance}" field="authCapital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.paidupCapital}">
				<li class="fieldcontain">
					<span id="paidupCapital-label" class="property-label"><g:message code="business.paidupCapital.label" default="Paidup Capital" /></span>
					
						<span class="property-value" aria-labelledby="paidupCapital-label"><g:fieldValue bean="${businessInstance}" field="paidupCapital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.status}">
				<li class="fieldcontain">
					<span id="status-label" class="property-label"><g:message code="business.status.label" default="Status" /></span>
					
						<span class="property-value" aria-labelledby="status-label"><g:link controller="businessStatus" action="show" id="${businessInstance?.status?.id}">${businessInstance?.status?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regAddress1}">
				<li class="fieldcontain">
					<span id="regAddress1-label" class="property-label"><g:message code="business.regAddress1.label" default="Reg Address1" /></span>
					
						<span class="property-value" aria-labelledby="regAddress1-label"><g:fieldValue bean="${businessInstance}" field="regAddress1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regAddress2}">
				<li class="fieldcontain">
					<span id="regAddress2-label" class="property-label"><g:message code="business.regAddress2.label" default="Reg Address2" /></span>
					
						<span class="property-value" aria-labelledby="regAddress2-label"><g:fieldValue bean="${businessInstance}" field="regAddress2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regAddress3}">
				<li class="fieldcontain">
					<span id="regAddress3-label" class="property-label"><g:message code="business.regAddress3.label" default="Reg Address3" /></span>
					
						<span class="property-value" aria-labelledby="regAddress3-label"><g:fieldValue bean="${businessInstance}" field="regAddress3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regPostcode}">
				<li class="fieldcontain">
					<span id="regPostcode-label" class="property-label"><g:message code="business.regPostcode.label" default="Reg Postcode" /></span>
					
						<span class="property-value" aria-labelledby="regPostcode-label"><g:fieldValue bean="${businessInstance}" field="regPostcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regTown}">
				<li class="fieldcontain">
					<span id="regTown-label" class="property-label"><g:message code="business.regTown.label" default="Reg Town" /></span>
					
						<span class="property-value" aria-labelledby="regTown-label"><g:fieldValue bean="${businessInstance}" field="regTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regPhone}">
				<li class="fieldcontain">
					<span id="regPhone-label" class="property-label"><g:message code="business.regPhone.label" default="Reg Phone" /></span>
					
						<span class="property-value" aria-labelledby="regPhone-label"><g:fieldValue bean="${businessInstance}" field="regPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regFax}">
				<li class="fieldcontain">
					<span id="regFax-label" class="property-label"><g:message code="business.regFax.label" default="Reg Fax" /></span>
					
						<span class="property-value" aria-labelledby="regFax-label"><g:fieldValue bean="${businessInstance}" field="regFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busAddress1}">
				<li class="fieldcontain">
					<span id="busAddress1-label" class="property-label"><g:message code="business.busAddress1.label" default="Bus Address1" /></span>
					
						<span class="property-value" aria-labelledby="busAddress1-label"><g:fieldValue bean="${businessInstance}" field="busAddress1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busAddress2}">
				<li class="fieldcontain">
					<span id="busAddress2-label" class="property-label"><g:message code="business.busAddress2.label" default="Bus Address2" /></span>
					
						<span class="property-value" aria-labelledby="busAddress2-label"><g:fieldValue bean="${businessInstance}" field="busAddress2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busAddress3}">
				<li class="fieldcontain">
					<span id="busAddress3-label" class="property-label"><g:message code="business.busAddress3.label" default="Bus Address3" /></span>
					
						<span class="property-value" aria-labelledby="busAddress3-label"><g:fieldValue bean="${businessInstance}" field="busAddress3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busPostcode}">
				<li class="fieldcontain">
					<span id="busPostcode-label" class="property-label"><g:message code="business.busPostcode.label" default="Bus Postcode" /></span>
					
						<span class="property-value" aria-labelledby="busPostcode-label"><g:fieldValue bean="${businessInstance}" field="busPostcode"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busTown}">
				<li class="fieldcontain">
					<span id="busTown-label" class="property-label"><g:message code="business.busTown.label" default="Bus Town" /></span>
					
						<span class="property-value" aria-labelledby="busTown-label"><g:fieldValue bean="${businessInstance}" field="busTown"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busState}">
				<li class="fieldcontain">
					<span id="busState-label" class="property-label"><g:message code="business.busState.label" default="Bus State" /></span>
					
						<span class="property-value" aria-labelledby="busState-label"><g:link controller="state" action="show" id="${businessInstance?.busState?.id}">${businessInstance?.busState?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busPhone}">
				<li class="fieldcontain">
					<span id="busPhone-label" class="property-label"><g:message code="business.busPhone.label" default="Bus Phone" /></span>
					
						<span class="property-value" aria-labelledby="busPhone-label"><g:fieldValue bean="${businessInstance}" field="busPhone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.busFax}">
				<li class="fieldcontain">
					<span id="busFax-label" class="property-label"><g:message code="business.busFax.label" default="Bus Fax" /></span>
					
						<span class="property-value" aria-labelledby="busFax-label"><g:fieldValue bean="${businessInstance}" field="busFax"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="business.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${businessInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.website}">
				<li class="fieldcontain">
					<span id="website-label" class="property-label"><g:message code="business.website.label" default="Website" /></span>
					
						<span class="property-value" aria-labelledby="website-label"><g:fieldValue bean="${businessInstance}" field="website"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="business.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${businessInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.active}">
				<li class="fieldcontain">
					<span id="active-label" class="property-label"><g:message code="business.active.label" default="Active" /></span>
					
						<span class="property-value" aria-labelledby="active-label"><g:formatBoolean boolean="${businessInstance?.active}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.members}">
				<li class="fieldcontain">
					<span id="members-label" class="property-label"><g:message code="business.members.label" default="Members" /></span>
					
						<g:each in="${businessInstance.members}" var="m">
						<span class="property-value" aria-labelledby="members-label"><g:link controller="memberLink" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.regState}">
				<li class="fieldcontain">
					<span id="regState-label" class="property-label"><g:message code="business.regState.label" default="Reg State" /></span>
					
						<span class="property-value" aria-labelledby="regState-label"><g:link controller="state" action="show" id="${businessInstance?.regState?.id}">${businessInstance?.regState?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${businessInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="business.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:link controller="businessType" action="show" id="${businessInstance?.type?.id}">${businessInstance?.type?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:businessInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${businessInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
