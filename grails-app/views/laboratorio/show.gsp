
<%@ page import="residuosquimicos.Laboratorio" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'laboratorio.label', default: 'Laboratorio')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-laboratorio" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-laboratorio" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list laboratorio">
			
				<g:if test="${laboratorioInstance?.centro}">
				<li class="fieldcontain">
					<span id="centro-label" class="property-label"><g:message code="laboratorio.centro.label" default="Centro" /></span>
					
						<span class="property-value" aria-labelledby="centro-label"><g:fieldValue bean="${laboratorioInstance}" field="centro"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratorioInstance?.departamento}">
				<li class="fieldcontain">
					<span id="departamento-label" class="property-label"><g:message code="laboratorio.departamento.label" default="Departamento" /></span>
					
						<span class="property-value" aria-labelledby="departamento-label"><g:fieldValue bean="${laboratorioInstance}" field="departamento"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratorioInstance?.laboratorio}">
				<li class="fieldcontain">
					<span id="laboratorio-label" class="property-label"><g:message code="laboratorio.laboratorio.label" default="Laboratorio" /></span>
					
						<span class="property-value" aria-labelledby="laboratorio-label"><g:fieldValue bean="${laboratorioInstance}" field="laboratorio"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratorioInstance?.solicitante}">
				<li class="fieldcontain">
					<span id="solicitante-label" class="property-label"><g:message code="laboratorio.solicitante.label" default="Solicitante" /></span>
					
						<span class="property-value" aria-labelledby="solicitante-label"><g:link controller="usuario" action="show" id="${laboratorioInstance?.solicitante?.id}">${laboratorioInstance?.solicitante?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratorioInstance?.responsavel}">
				<li class="fieldcontain">
					<span id="responsavel-label" class="property-label"><g:message code="laboratorio.responsavel.label" default="Responsavel" /></span>
					
						<span class="property-value" aria-labelledby="responsavel-label"><g:link controller="usuario" action="show" id="${laboratorioInstance?.responsavel?.id}">${laboratorioInstance?.responsavel?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${laboratorioInstance?.residuos}">
				<li class="fieldcontain">
					<span id="residuos-label" class="property-label"><g:message code="laboratorio.residuos.label" default="Residuos" /></span>
					
						<g:each in="${laboratorioInstance.residuos}" var="r">
						<span class="property-value" aria-labelledby="residuos-label"><g:link controller="residuo" action="show" id="${r.id}">${r?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:laboratorioInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${laboratorioInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
