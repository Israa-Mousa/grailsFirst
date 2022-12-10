<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
        <script src="https://kit.fontawesome.com/a076d05399.js" crossorigin="anonymous"></script>

    </head>
    <body>
        <a href="#list-car" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li>
                    <a href="/car/create" >
                        <i class="fa fa-plus" style=""></i>
                        Create car
                    </a>
                </li>
%{--                <button class="btn"><i class="fa fa-home"></i></button>--}%

%{--                                <li><g:link class="create" action="create">--}%
%{--                    <i class="fas fa-plus"></i>--}%

%{--                    <g:message code="default.new.label" args="[entityName]" /></g:link></li>--}%
            </ul>
        </div>
        <div id="list-car" class="content scaffold-list" role="main">
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

                    <g:each in="${carList}" var="car">
                        <tr>

                            <td>${car.carModel}</td>
                            <td>${car.carColor}</td>
                            <td>${car.carNumber}</td>
                            <td></td>
                            <td>
                                <g:link class="edit" action="edit" resource="${car}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
                            </td>
                            <td>
                                <g:form resource="${car}" method="DELETE">
                                    <input class="delete" type="submit" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />

                                </g:form></td>

                        </tr>
                    </g:each>
                </table>
            </div>

%{--            <div class="pagination">--}%
%{--                <g:paginate total="${carCount ?: 0}" />--}%
%{--            </div>--}%
        </div>
    <div sec:authorize="isAuthenticated()">
        <a href="javascript: document.logoutForm.submit()" class="dropdown-toggle">Sign out</a>
        <form name="logoutForm" th:action="@{logout}" method="post" th:hidden="true">
            <input hidden type="submit" value="Sign Out" />
        </form>
        <g:link controller='logout' action="index">Logout</g:link>
    </div>test
    <g:form controller="logout">
        <g:submitButton name="logout" value="Logout" />
    </g:form>
    <g:form controller="LogoutCustom" action="logoutMe">
        <g:submitButton  name="logout" value="lognew"/>
    </g:form>
       <g:link controller="logoutCustom" action="logoutMe">LogoutMe</g:link>
    </body>
</html>