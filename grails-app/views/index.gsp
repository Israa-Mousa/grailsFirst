<!doctype html>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Car Rent</title>

%{--    <link rel="shortcut icon" href="${createLinkTo(dir:'images',file:'car.svg')}" type="image/x-icon" />--}%
        <asset:link rel="icon" href="car.svg" src="assets/images/img.png" type="image/svg" />
%{--<asset:image src='logo.png' height=50/>--}%

</head>
<body>
%{--<content tag="nav">--}%
%{--    <ul class="nav-list nav-list-larger">--}%

%{--        <li class="dropdown" >--}%
%{--        <li><a href="client/index" class="nav-link">Client </a>--}%
%{--    </li>--}%
%{--    </li>--}%
%{--        <li class="dropdown">--}%
%{--        <li><a href="car/index" class="nav-link">Car </a></li>--}%
%{--    </li>--}%
%{--        <li class="dropdown">--}%
%{--        <li><a href="address/index" class="nav-link">Address </a></li>--}%
%{--    </li>--}%
%{--        <li class="dropdown">--}%
%{--        <li><a href="rent/index" class="nav-link">Rent </a></li>--}%
%{--    </li>--}%
%{--    </ul>--}%

%{--</content>--}%

<div class="svg" role="presentation">
    <div class="grails-logo-container">

        <asset:image src="header.jpg" class="grails-logo"/>
    </div>
</div>

<div id="content" role="main">
    <section class="row colset-2-its">
        <h1>Welcome to Admin of RentCar</h1>


        <div id="controllers" role="navigation">
%{--            <h2>Available Controllers:</h2>--}%
%{--            <ul>--}%
%{--                <g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">--}%
%{--                    <li class="controller">--}%
%{--                        <g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link>--}%
%{--                    </li>--}%
%{--                </g:each>--}%

%{--            </ul>--}%
        </div>
    </section>
</div>

</body>
</html>
