<%@ page import="com.bina.structure.Gender" %>



<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="gender.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${genderInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: genderInstance, field: 'code', 'error')} required">
	<label for="code">
		<g:message code="gender.code.label" default="Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="code" type="number" value="${genderInstance.code}" required=""/>

</div>

