<%@ page import="com.bina.structure.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="member.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${memberInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'idType', 'error')} ">
	<label for="idType">
		<g:message code="member.idType.label" default="Id Type" />
		
	</label>
	<g:select id="idType" name="idType.id" from="${com.bina.structure.IDType.list()}" optionKey="id" value="${memberInstance?.idType?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'idNumber', 'error')} ">
	<label for="idNumber">
		<g:message code="member.idNumber.label" default="Id Number" />
		
	</label>
	<g:textField name="idNumber" value="${memberInstance?.idNumber}"/>

</div>

