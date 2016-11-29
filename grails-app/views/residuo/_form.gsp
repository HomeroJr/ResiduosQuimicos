<%@ page import="residuosquimicos.Residuo" %>



<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="residuo.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${residuoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'descricao', 'error')} required">
	<label for="descricao">
		<g:message code="residuo.descricao.label" default="Descricao" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="descricao" required="" value="${residuoInstance?.descricao}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'peso', 'error')} required">
	<label for="peso">
		<g:message code="residuo.peso.label" default="Peso" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="peso" value="${fieldValue(bean: residuoInstance, field: 'peso')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'dataCadastro', 'error')} required">
	<label for="dataCadastro">
		<g:message code="residuo.dataCadastro.label" default="Data Cadastro" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataCadastro" precision="day"  value="${residuoInstance?.dataCadastro}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: residuoInstance, field: 'laboratorio', 'error')} required">
	<label for="laboratorio">
		<g:message code="residuo.laboratorio.label" default="Laboratorio" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="laboratorio" name="laboratorio.id" from="${residuosquimicos.Laboratorio.list()}" optionKey="id" required="" value="${residuoInstance?.laboratorio?.id}" class="many-to-one"/>

</div>

