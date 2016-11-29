<html>
<head>
    <meta name="layout" content="main">
    <title><g:message code="default.title.page.registrarLaboratorio" /></title>
</head>

<body>
    <div id="createnewLab-content" class="content scaffold-list" role="main">
        <g:form url="[action:'saveNameFile']" >
            <fieldset class="form">
                <label for="nomeLaboratorio">Nome do novo Laboratório</label>
                <g:textField name="nomeLaboratorio" required=""/>
            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" value="${message(code: 'default.button.create.label', default: 'Criar')}" />
            </fieldset>
        </g:form>
    </div>
</body>
</html>