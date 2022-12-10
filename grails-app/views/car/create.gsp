<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
    <title>
    <g:message code="default.create.label" args="[entityName]" />
    </title>
</head>

<body>
<a href="#create-car" class="skip" tabindex="-1">
    <g:message code="default.link.skip.label" default="Skip to content&hellip;" />
</a>
<div class="nav" role="navigation">
    <ul>
        <li>
            <a href="/car/create" >
                <i class="fas fa-plus" style=""></i>
                Create Car
            </a>
        </li>
        %{--
        <li>
            <a class="home" href="${createLink(uri: '/')}">
                <g:message code="default.home.label" />
            </a>
        </li>--}%
%{--        <li>--}%
%{--            <g:link class="list" action="index">--}%
%{--                <g:message code="default.list.label" args="[entityName]" /></g:link>--}%
%{--        </li>--}%
    </ul>
</div>
<div id="create-car" class="content scaffold-create" role="main">
    <h1>
        <g:message code="default.create.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.car}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.car}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}" />
                </li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form action="save" enctype="multipart/form-data" method="POST">
        <fieldset class="form">
            <div class="col-lg-10">
                <fieldset>
                    <div class="row" style="justify-content: center">
                        <div class="col-md-3">
                            <label>Car Number</label>
                        </div>
                        <div class="col-md-6">
        <g:textField class="form-control" name="carNumber"></g:textField>
        </div>
    </div>
</fieldset>
        <fieldset>
            <div class="row" style="justify-content: center">
                <div class="col-md-3">
                    <label>Car Model</label>
                </div>
                <div class="col-md-6">
                    <g:textField class="form-control" name="carModel"></g:textField>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <div class="row" style="justify-content: center">
                <div class="col-md-3">
                    <label>Car Color</label>
                </div>
                <div class="col-md-6">
                    <g:textField class="form-control" name="carColor"></g:textField>
                </div>
            </div>
        </fieldset>
        <fieldset>
            <div class="row" style="justify-content: center">
                <div class="col-md-3">
                    <label>Car Image</label>
                </div>
                <div class="col-md-6">
                    <input type='file' class="form-control" name='carPhoto2' id="carPhoto" multiple />
                </div>
            </div>
        </fieldset>

        <fieldset>
            <div class="row" style="justify-content: center">
                <div class="col-md-3">
                </div>
                <div class="col-md-6">
                    <button type="submit" name="create" value="${message(code: 'default.button.create.label', default: 'Create')}"  class="btn btn-primary form-control">Submit</button>
                </div>
            </div>
        </fieldset>


%{--        <fieldset class="buttons">--}%
%{--            <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />--}%
%{--        </fieldset>--}%
    </g:form>
</fieldset>

</div>
</body>

</html>