<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#edit-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="edit-client" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.client}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.client}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>
            <g:form resource="${this.client}" method="PUT">
                <g:hiddenField name="version" value="${this.client?.version}" />
                <fieldset class="form">


                    %{--<f:all bean="client" />--}%
                    <fieldset>
                        <label>clientName</label>

                        <g:textField name="clientName" value="${client.clientName}"></g:textField>
                    </fieldset>
                    <fieldset>
                        <label>clientID</label>
                        <g:textField name="clientID" value="${client.clientID}"></g:textField>
                    </fieldset>
                    <fieldset>
                        <label>Gender</label>
                        <g:select name="Gender" from="${project.Gernder.values()}" value="${client.gender}" />
                    </fieldset>

                </fieldset>
                <fieldset class="buttons">
                    <input class="save" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
