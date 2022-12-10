<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'client.label', default: 'Client')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>

        <a href="#list-client" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li>
                    <g:link class="create" action="create">
                    <i class="fa fa-plus"></i>

                    <g:message code="default.new.label" args="[entityName]" />
                </g:link>

                </li>
            </ul>
        </div>
   <div>
    <div id="new" class="new">
        <button class="bg-primary"  id="submit" onclick="getNewTemplate()">

%{--            <g:link class="create" action="create" style="color: #666666 !important;">--}%
                <i class="fa fa-plus"> </i> createClient

%{--                <g:message code="default.new.label" args="[entityName]" />--}%
%{--            </g:link>--}%

        </button>
    </div>
        <div id="list-client" class="content scaffold-list" role="main" >
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>
            <div class="col-lg-10" style="justify-content: center">
            <table>
                <tr>

                    <th>Client Name</th>
                    <th>Client ID</th>
                    <th>Client Gender</th>
                    <th colspan="3">action</th>
                </tr>

                <g:each in="${clientList}" var="client">
                    <tr>

                        <td>${client.clientName}</td>
                        <td>${client.clientID}</td>
                        <td>${client.gender}</td>
                        <td></td>
                        <td>
                            <g:link class="edit" action="edit" resource="${client}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                        </td>
                        <td>
                            <g:form resource="${client}" method="DELETE">
                                <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                        </g:form></td>

                    </tr>
                </g:each>
            </table>
             </div>

        </div>
   </div>
    <script type="text/javascript">

        function getNewTemplate(){
            $.ajax({
                url: "${createLink(controller: 'client',action: 'getNew')}",
                type: "GET",
                dataType: "HTML",
            }).done(function (data){
                $("#new").html(data)


                });
        }

    </script>
    </body>
</html>