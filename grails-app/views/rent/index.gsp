<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'rent.label', default: 'Rent')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
<style>
    .footer{
        /*position:relative !important;*/
    }
</style>
    <body>
        <a href="#list-rent" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
        </div>
        <div id="list-rent" class="content scaffold-list" role="main">
            <div id="list-car" class="content scaffold-list" role="main">
                <h1><g:message code="default.list.label" args="[entityName]" /></h1>
                <g:if test="${flash.message}">
                    <div class="message" role="status">${flash.message}</div>
                </g:if>
                <div class="col-lg-10" style="justify-content: center">
                    <table>
                        <tr>

                            <th>Rent ID</th>
                            <th>Car ID</th>
                            <th>Cleint ID</th>
                        </tr>

                        <g:each in="${rentList}" var="rent">
                            <tr>

                                <td>${rent.id}</td>
                                <td>${rent.carId}</td>
                                <td>${rent.clientId}</td>
%{--                                <td></td>--}%
%{--                                <td>--}%
%{--                                    <g:link class="edit" action="edit" resource="${car}"><g:message code="default.button.edit.label" default="Edit" /></g:link>--}%
%{--                                </td>--}%
%{--                                <td>--}%
%{--                                    <g:form resource="${car}" method="DELETE">--}%
%{--                                        <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />--}%

%{--                                    </g:form></td>--}%

                            </tr>
                        </g:each>
                    </table>
                </div>

                %{--            <div class="pagination">--}%
                %{--                <g:paginate total="${carCount ?: 0}" />--}%
                %{--            </div>--}%
            </div>



%{--            <div class="pagination">--}%
%{--                <g:paginate total="${rentCount ?: 0}" />--}%
%{--            </div>--}%
        </div>
    </body>
</html>