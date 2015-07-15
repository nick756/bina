<%@ page import="com.bina.structure.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="company.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${companyInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'rocNo', 'error')} required">
	<label for="rocNo">
		<g:message code="company.rocNo.label" default="Roc No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rocNo" required="" value="${companyInstance?.rocNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="company.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="address" required="" value="${companyInstance?.address}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="company.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${companyInstance?.city}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="company.state.label" default="State" />
		
	</label>
	<g:select id="state" name="state.id" from="${com.bina.structure.State.list()}" optionKey="id" value="${companyInstance?.state?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="company.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${com.bina.structure.BusinessType.list()}" optionKey="id" required="" value="${companyInstance?.type?.id}" class="many-to-one"/>

</div>

