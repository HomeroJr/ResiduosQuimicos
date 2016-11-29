
<%@ page import="residuosquimicos.Residuo" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'residuo.label', default: 'Residuo')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-residuo" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-residuo" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list residuo">
			
				<g:if test="${residuoInstance?.nome}">
				<li class="fieldcontain">
					<span id="nome-label" class="property-label"><g:message code="residuo.nome.label" default="Nome" /></span>
					
						<span class="property-value" aria-labelledby="nome-label"><g:fieldValue bean="${residuoInstance}" field="nome"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.descricao}">
				<li class="fieldcontain">
					<span id="descricao-label" class="property-label"><g:message code="residuo.descricao.label" default="Descricao" /></span>
					
						<span class="property-value" aria-labelledby="descricao-label"><g:fieldValue bean="${residuoInstance}" field="descricao"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.peso}">
				<li class="fieldcontain">
					<span id="peso-label" class="property-label"><g:message code="residuo.peso.label" default="Peso" /></span>
					
						<span class="property-value" aria-labelledby="peso-label"><g:fieldValue bean="${residuoInstance}" field="peso"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.dataCadastro}">
				<li class="fieldcontain">
					<span id="dataCadastro-label" class="property-label"><g:message code="residuo.dataCadastro.label" default="Data Cadastro" /></span>
					
						<span class="property-value" aria-labelledby="dataCadastro-label"><g:formatDate date="${residuoInstance?.dataCadastro}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${residuoInstance?.laboratorio}">
				<li class="fieldcontain">
					<span id="laboratorio-label" class="property-label"><g:message code="residuo.laboratorio.label" default="Laboratorio" /></span>
					
						<span class="property-value" aria-labelledby="laboratorio-label"><g:link controller="laboratorio" action="show" id="${residuoInstance?.laboratorio?.id}">${residuoInstance?.laboratorio?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:residuoInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${residuoInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
