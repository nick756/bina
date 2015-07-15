
<%@ page import="com.bina.structure.Business" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'business.label', default: 'Business')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-business" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-business" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="name" title="${message(code: 'business.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="rocNo" title="${message(code: 'business.rocNo.label', default: 'Roc No')}" />
					
						<th><g:message code="business.industry.label" default="Industry" /></th>
					
						<g:sortableColumn property="mofNo" title="${message(code: 'business.mofNo.label', default: 'Mof No')}" />
					
						<g:sortableColumn property="authCapital" title="${message(code: 'business.authCapital.label', default: 'Auth Capital')}" />
					
						<g:sortableColumn property="paidupCapital" title="${message(code: 'business.paidupCapital.label', default: 'Paidup Capital')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${businessInstanceList}" status="i" var="businessInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${businessInstance.id}">${fieldValue(bean: businessInstance, field: "name")}</g:link></td>
					
						<td>${fieldValue(bean: businessInstance, field: "rocNo")}</td>
					
						<td>${fieldValue(bean: businessInstance, field: "industry")}</td>
					
						<td>${fieldValue(bean: businessInstance, field: "mofNo")}</td>
					
						<td>${fieldValue(bean: businessInstance, field: "authCapital")}</td>
					
						<td>${fieldValue(bean: businessInstance, field: "paidupCapital")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${businessInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
