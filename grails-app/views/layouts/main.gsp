<!doctype html>
<html lang="en" class="no-js">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
<asset:link rel="icon" href="car.svg" src="assets/images/img.png" type="image/svg" />

<title>
<g:layoutTitle default="Grails" />
</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>


<asset:stylesheet src="application.css" />


<g:layoutHead/>
</head>
<div class="test" style="color: #4cae4c">

</div>
<div class="navbar navbar-default navbar-static-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <div style="position: fixed;top: -5px;">
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="car.svg" href="/" class=""/>
                    </i>
                </a>
            </div>

        </div>

        <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
            <ul class="nav navbar-nav navbar-right nav-list">
                <div tag="nav">
                    <ul class="nav-list nav-list-larger">

                        <li class="dropdown" >
                        <li><a href="/client/index" class="nav-link">Client </a>
                        </li>
                    </li>
                        <li class="dropdown">
                        <li><a href="/car/index" class="nav-link">Car </a></li>
                    </li>
                        <li class="dropdown">
                        <li><a href="/address/index" class="nav-link">Address </a></li>
                    </li>
                        <li class="dropdown">
                        <li><a href="/rent/index" class="nav-link">Rent </a></li>
                    </li>
                    </li>
                        <li class="dropdown">
                        <li>
                        <a href="/logoutCustom/logoutMe" class="nav-link">Logout </a>
%{--                        <g:link controller="logoutCustom" action="logoutMe">Logout</g:link>--}%
                    </li>
                    </li>
                    </ul>

                </div>
                <g:pageProperty name="page.nav" />
            </ul>
        </div>
    </div>
</div>

<g:layoutBody/>

<div class="footer" role="contentinfo">
    <div class="row" style="justify-content: center;text-align: center">
        <p style="font-size:15px"> © 2022 Company - All Rights Reserved</p>
    </div>
    <div class="row" style="justify-content: center;text-align: center;">
        <div class="footer-social-link" style="">
            <h3>Follow us</h3>
            <ul style="display: flex;
            justify-content: center;
            list-style: none;
            ">
                <li>
                    <a href="#">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li>

                    <a href="#">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-google-plus"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-linkedin"></i>
                    </a>
                </li>
                <li>
                    <a href="#">
                        <i class="fa fa-instagram"></i>
                    </a>
                </li>
            </ul>
        </div>
    </div>
    <!-- End Social link -->

</div>
<asset:javascript src="application.js" />

</body>

</html>