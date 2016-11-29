<%@ page import="residuosquimicos.Usuario" %>



<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="usuario.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" required="" value="${usuarioInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'senha', 'error')} required">
	<label for="senha">
		<g:message code="usuario.senha.label" default="Senha" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="senha" required="" value="${usuarioInstance?.senha}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'tipo', 'error')} required">
	<label for="tipo">
		<g:message code="usuario.tipo.label" default="Tipo" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="tipo" type="number" value="${usuarioInstance.tipo}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'associado', 'error')} ">
	<label for="associado">
		<g:message code="usuario.associado.label" default="Associado" />
		
	</label>
	<g:checkBox name="associado" value="${usuarioInstance?.associado}" />

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="usuario.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="email" required="" value="${usuarioInstance?.email}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: usuarioInstance, field: 'ramal', 'error')} required">
	<label for="ramal">
		<g:message code="usuario.ramal.label" default="Ramal" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ramal" required="" value="${usuarioInstance?.ramal}"/>

</div>

