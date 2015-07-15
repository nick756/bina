<%@ page import="com.bina.structure.Business" %>



<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="business.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${businessInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'rocNo', 'error')} required">
	<label for="rocNo">
		<g:message code="business.rocNo.label" default="Roc No" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="rocNo" required="" value="${businessInstance?.rocNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'industry', 'error')} ">
	<label for="industry">
		<g:message code="business.industry.label" default="Industry" />
		
	</label>
	<g:select id="industry" name="industry.id" from="${com.bina.structure.Industry.list()}" optionKey="id" value="${businessInstance?.industry?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'mofNo', 'error')} ">
	<label for="mofNo">
		<g:message code="business.mofNo.label" default="Mof No" />
		
	</label>
	<g:textField name="mofNo" value="${businessInstance?.mofNo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'authCapital', 'error')} ">
	<label for="authCapital">
		<g:message code="business.authCapital.label" default="Auth Capital" />
		
	</label>
	<g:field name="authCapital" value="${fieldValue(bean: businessInstance, field: 'authCapital')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'paidupCapital', 'error')} ">
	<label for="paidupCapital">
		<g:message code="business.paidupCapital.label" default="Paidup Capital" />
		
	</label>
	<g:field name="paidupCapital" value="${fieldValue(bean: businessInstance, field: 'paidupCapital')}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'status', 'error')} ">
	<label for="status">
		<g:message code="business.status.label" default="Status" />
		
	</label>
	<g:select id="status" name="status.id" from="${com.bina.structure.BusinessStatus.list()}" optionKey="id" value="${businessInstance?.status?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regAddress1', 'error')} ">
	<label for="regAddress1">
		<g:message code="business.regAddress1.label" default="Reg Address1" />
		
	</label>
	<g:textField name="regAddress1" value="${businessInstance?.regAddress1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regAddress2', 'error')} ">
	<label for="regAddress2">
		<g:message code="business.regAddress2.label" default="Reg Address2" />
		
	</label>
	<g:textField name="regAddress2" value="${businessInstance?.regAddress2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regAddress3', 'error')} ">
	<label for="regAddress3">
		<g:message code="business.regAddress3.label" default="Reg Address3" />
		
	</label>
	<g:textField name="regAddress3" value="${businessInstance?.regAddress3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regPostcode', 'error')} ">
	<label for="regPostcode">
		<g:message code="business.regPostcode.label" default="Reg Postcode" />
		
	</label>
	<g:field name="regPostcode" type="number" value="${businessInstance.regPostcode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regTown', 'error')} ">
	<label for="regTown">
		<g:message code="business.regTown.label" default="Reg Town" />
		
	</label>
	<g:textField name="regTown" value="${businessInstance?.regTown}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regPhone', 'error')} ">
	<label for="regPhone">
		<g:message code="business.regPhone.label" default="Reg Phone" />
		
	</label>
	<g:textField name="regPhone" value="${businessInstance?.regPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regFax', 'error')} ">
	<label for="regFax">
		<g:message code="business.regFax.label" default="Reg Fax" />
		
	</label>
	<g:textField name="regFax" value="${businessInstance?.regFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busAddress1', 'error')} ">
	<label for="busAddress1">
		<g:message code="business.busAddress1.label" default="Bus Address1" />
		
	</label>
	<g:textField name="busAddress1" value="${businessInstance?.busAddress1}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busAddress2', 'error')} ">
	<label for="busAddress2">
		<g:message code="business.busAddress2.label" default="Bus Address2" />
		
	</label>
	<g:textField name="busAddress2" value="${businessInstance?.busAddress2}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busAddress3', 'error')} ">
	<label for="busAddress3">
		<g:message code="business.busAddress3.label" default="Bus Address3" />
		
	</label>
	<g:textField name="busAddress3" value="${businessInstance?.busAddress3}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busPostcode', 'error')} ">
	<label for="busPostcode">
		<g:message code="business.busPostcode.label" default="Bus Postcode" />
		
	</label>
	<g:field name="busPostcode" type="number" value="${businessInstance.busPostcode}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busTown', 'error')} ">
	<label for="busTown">
		<g:message code="business.busTown.label" default="Bus Town" />
		
	</label>
	<g:textField name="busTown" value="${businessInstance?.busTown}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busState', 'error')} ">
	<label for="busState">
		<g:message code="business.busState.label" default="Bus State" />
		
	</label>
	<g:select id="busState" name="busState.id" from="${com.bina.structure.State.list()}" optionKey="id" value="${businessInstance?.busState?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busPhone', 'error')} ">
	<label for="busPhone">
		<g:message code="business.busPhone.label" default="Bus Phone" />
		
	</label>
	<g:textField name="busPhone" value="${businessInstance?.busPhone}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'busFax', 'error')} ">
	<label for="busFax">
		<g:message code="business.busFax.label" default="Bus Fax" />
		
	</label>
	<g:textField name="busFax" value="${businessInstance?.busFax}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="business.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${businessInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'website', 'error')} ">
	<label for="website">
		<g:message code="business.website.label" default="Website" />
		
	</label>
	<g:textField name="website" value="${businessInstance?.website}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="business.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${businessInstance?.remarks}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'active', 'error')} ">
	<label for="active">
		<g:message code="business.active.label" default="Active" />
		
	</label>
	<g:checkBox name="active" value="${businessInstance?.active}" />

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'members', 'error')} ">
	<label for="members">
		<g:message code="business.members.label" default="Members" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${businessInstance?.members?}" var="m">
    <li><g:link controller="memberLink" action="show" id="${m.id}">${m?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="memberLink" action="create" params="['business.id': businessInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'memberLink.label', default: 'MemberLink')])}</g:link>
</li>
</ul>


</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'regState', 'error')} required">
	<label for="regState">
		<g:message code="business.regState.label" default="Reg State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="regState" name="regState.id" from="${com.bina.structure.State.list()}" optionKey="id" required="" value="${businessInstance?.regState?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: businessInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="business.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="type" name="type.id" from="${com.bina.structure.BusinessType.list()}" optionKey="id" required="" value="${businessInstance?.type?.id}" class="many-to-one"/>

</div>

