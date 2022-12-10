<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
    <title>
    <g:message code="default.show.label" args="[entityName]" />
    </title>
</head>

<body>

<a href="#show-client" class="skip" tabindex="-1">
    <g:message code="default.link.skip.label" default="Skip to content&hellip;" />
</a>
<div class="nav" role="navigation">
    <ul>


        <li>
            <g:link class="list" action="index">
                <g:message code="default.list.label" args="[entityName]" /></g:link>
        </li>
        <li>
            <g:link class="create" action="create">
                <g:message code="default.new.label" args="[entityName]" /></g:link>
        </li>
    </ul>
</div>

<div id="show-client" class="content scaffold-show" role="main">
    <h1>
        <g:message code="default.show.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <div class="col-md-8" style="justify-content: center">
        <g:each in="${client}">
            <p>Client id: ${client.id}</p>
            <p>Client Name: ${client.clientName}</p>
            <p>Client personal id: ${client.clientID}</p>
        </g:each>
    </div>
</div>

</div>
<div class="col-md-8">
<g:form resource="${this.client}" method="DELETE">
    <fieldset class="buttons">
        <g:link class="edit" action="edit" resource="${this.client}">
            <g:message code="default.button.edit.label" default="Edit" /></g:link>
        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
    </fieldset>
</g:form>
</div>
</body>

</html>