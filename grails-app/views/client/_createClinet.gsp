<!DOCTYPE html>
<html>

<head>
    <meta name="layout" content="main" />
    <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
    <title>
    <g:message code="default.create.label" args="[entityName]" />
    </title>
    <style>
    fieldset{
        padding: 0px !important;
    }
    </style>
</head>

<body>
<a href="#create-client" class="skip" tabindex="-1">
    <g:message code="default.link.skip.label" default="Skip to content&hellip;" />
</a>
<div class="nav" role="navigation">
    <ul>
        <li>
            <g:link class="list" action="index">
                <g:message code="default.list.label" args="[entityName]" /></g:link>
        </li>
    </ul>
</div>
<div id="create-client" class="content scaffold-create" role="main">
    .,mvkdslm
    <h1>
        <g:message code="default.create.label" args="[entityName]" />
    </h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${this.client}">
        <ul class="errors" role="alert">
            <g:eachError bean="${this.client}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>>
                    <g:message error="${error}" />
                </li>
            </g:eachError>
        </ul>
    </g:hasErrors>

    <div class="col-md-12" style="justify-content: center;">
        <g:form  class="client" id="formClient" name="formClient"  >
%{--        <form id="client">--}%
            <fieldset class="form" style="padding: inherit">
                <div class="col-lg-10" style="">
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Client Name</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField class="form-control" name="clientName"></g:textField>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Address Name</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField name="addressName" class="form-control"></g:textField>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center;">
                            <div class="col-md-3">
                                <label>Client Personal ID</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField name="clientID" class="form-control"></g:textField>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Car Price</label>
                            </div>
                            <div class="col-md-6">
                                <g:textField name="price" class="form-control"></g:textField>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Start Time</label>
                            </div>
                            <div class="col-md-6">
                                <g:datePicker name="startTime" class="form-control"></g:datePicker>
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Return Time</label>
                            </div>
                            <div class="col-md-6">
                                <g:datePicker class="form-control" name="returnTime"></g:datePicker>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Gender</label>
                            </div>
                            <div class="col-md-6">
                                <g:select name="Gender" class="form-control" from="${project.Gernder.values()}" value="${project.Gernder.values()}" />
                            </div>
                        </div>
                    </fieldset>

                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                                <label>Car</label>
                            </div>
                            <div class="col-md-6">
                                <g:select name="carId" class="form-control" from="${project.Car.getAll()}" optionValue="carModel" optionKey="id" />
                            </div>
                        </div>
                    </fieldset>
                    <fieldset>
                        <div class="row" style="justify-content: center">
                            <div class="col-md-3">
                            </div>
                            <div class="col-md-6"> test
%{--                                <input type="button" onclick="saveclientAjax()">saveclinet--}%
                                <button name=""  type="button"onclick="saveclientAjax()" class=" form-control">OK</button>
                            </div>
                        </div>
                    </fieldset>



                </div>
            </fieldset>
%{--    </form>--}%
        </g:form>
    </div>
    <script type="text/javascript">

        function saveclientAjax(){
            console.log('creating lmlsfdml;')
            let formData = jQuery("#formClient").serializeArray();
            console.log(formData)
            $.ajax({
                url: "${createLink(controller: 'client',action: 'saveClient1')}",
                type: "POST",
                dataType: "JSON",
                data:$('#formClient').serialize(),
             })
                .success(function (data){
                    if(data.success==true){
                        console.log(data)
                        // $("#new").html(data)
                    }

                })

                .done(function (data){
                $("#new").html(data)

            console.log(data)
            })
            //

        }

    </script>

</body>

</html>