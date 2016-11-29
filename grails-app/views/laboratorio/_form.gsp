<%@ page import="residuosquimicos.Laboratorio" %>



<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'centro', 'error')} required">
	<label for="centro">
		<g:message code="laboratorio.centro.label" default="Centro" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="centro" from="${residuosquimicos.CentroList?.values()}" keys="${residuosquimicos.CentroList.values()*.name()}" required="" value="${laboratorioInstance?.centro?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'departamento', 'error')} required">
	<label for="departamento">
		<g:message code="laboratorio.departamento.label" default="Departamento" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="departamento" from="${residuosquimicos.DepartamentoList?.values()}" keys="${residuosquimicos.DepartamentoList.values()*.name()}" required="" value="${laboratorioInstance?.departamento?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'laboratorio', 'error')} required">
	<label for="laboratorio">
		<g:message code="laboratorio.laboratorio.label" default="Laboratorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="laboratorio" from="${residuosquimicos.LaboratorioList?.values()}" keys="${residuosquimicos.LaboratorioList.values()*.name()}" required="" value="${laboratorioInstance?.laboratorio?.name()}" />

</div>

<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'solicitante', 'error')} ">
	<label for="solicitante">
		<g:message code="laboratorio.solicitante.label" default="Solicitante" />
		
	</label>
	<g:select id="solicitante" name="solicitante.id" from="${residuosquimicos.Usuario.list()}" optionKey="id" value="${laboratorioInstance?.solicitante?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'responsavel', 'error')} ">
	<label for="responsavel">
		<g:message code="laboratorio.responsavel.label" default="Responsavel" />
		
	</label>
	<g:select id="responsavel" name="responsavel.id" from="${residuosquimicos.Usuario.list()}" optionKey="id" value="${laboratorioInstance?.responsavel?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

<div class="fieldcontain ${hasErrors(bean: laboratorioInstance, field: 'residuos', 'error')} ">
	<label for="residuos">
		<g:message code="laboratorio.residuos.label" default="Residuos" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${laboratorioInstance?.residuos?}" var="r">
    <li><g:link controller="residuo" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="residuo" action="create" params="['laboratorio.id': laboratorioInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'residuo.label', default: 'Residuo')])}</g:link>
</li>
</ul>


</div>

