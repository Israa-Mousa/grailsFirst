<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'rent.label', default: 'Rent')}" />
    <title>
    <g:message code="default.create.label" args="[entityName]" />
    </title>
</head>

<body>
<a href="#create-rent" class="skip" tabindex="-1">
    <g:message code="default.link.skip.label" default="Skip to content&hellip;" />
</a>
<div class="nav" role="navigation">
    <ul>
        <li>
            <a class="home" href="${createLink(uri: '/')}">
                <g:message code="default.home.label" />
            </a>
        </li>
        <li>
            <g:link class="list" action="index">
                <g:message code="default.list.label" args="[entityName]" /></g:link>
        </li>
    </ul>
</div>
<div id="create-rent" class="content scaffold-create" role="main">
    <h1>
        <g:message code="default.create.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.rent}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.rent}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}" />
                </li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <div class="col-md-12" style="justify-content: center">

        <g:form action="save">


            <fieldset class="form">
                %{--
                <f:all bean="rent" />--}%
                <fieldset>
                    <label>startTime</label>
                    <g:datePicker name="startTime"></g:datePicker>
                </fieldset>
                <fieldset>

                    <label>returnTime</label>
                    <g:datePicker name="returnTime"></g:datePicker>
                </fieldset>
                <fieldset>

                    <label>price</label>
                    <g:textField name="price"></g:textField>
                </fieldset>


            </fieldset>
            <fieldset class="buttons">
                <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
            </fieldset>

        </g:form>
    </div>
</div>
</body>

</html>