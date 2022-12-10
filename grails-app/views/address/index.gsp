<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'address.label', default: 'Address')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#list-address" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
%{--            <ul>--}%
%{--                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>--}%
%{--                <li><g:link class="create" action="create">--}%
%{--                    <g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
%{--            </ul>--}%
        </div>
        <div id="list-address" class="content scaffold-list" role="main">
            <h1><g:message code="default.list.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <div class="col-lg-10" style="justify-content: center">
                <table>
                    <tr>

                        <th>Address Name</th>
                        <th>Client ID</th>
                        <th>Client Name</th>
                    </tr>

                    <g:each in="${addressList}" var="address">
                        <tr>

                            <td>${address.addressName}</td>
                            <td>${address.clientId}</td>
                            <td>${address.client.clientName}</td>


                        </tr>
                    </g:each>
                </table>
            </div>
%{--            <f:table collection="${addressList}" />--}%

%{--            <div class="pagination">--}%
%{--                <g:paginate total="${addressCount ?: 0}" />--}%
%{--            </div>--}%

        </div>
    </body>
</html>