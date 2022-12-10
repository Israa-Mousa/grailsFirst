<!doctype html>
<html lang="en" class="no-js">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
  <title>
  <g:layoutTitle default="Grails"/>
  </title>
  <meta name="viewport" content="width=device-width, initial-scale=1"/>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" />
  <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
  <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <!------ Include the above in your HEAD tag ---------->


  <asset:stylesheet src="application.css"/>

  <g:layoutHead/>
</head>
<body>
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
      <div>
        <a class="navbar-brand" href="/#">
          <i class="fa grails-icon">
            <asset:image src="car.svg" href="/" class=""/>
          </i>
        </a>
      </div>

    </div>

    <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
      <ul class="nav navbar-nav navbar-right nav-list">
        <g:pageProperty name="page.nav" />
      </ul>
    </div>
  </div>
</div>

<g:layoutBody/>

    <div class="footer" role="contentinfo">
    <div class="row" style="justify-content: center">
    <p> Copy write © 2022 Done by Israa Mazaraa</p>
    </div>
    <div class="row" style="justify-content: center;text-align: center;">
    <div class="footer-social-link" style="width:31%">
        <h3>Follow us</h3>
        <ul style="display: flex;
        justify-content: space-around;
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

%{--    <div id="spinner" class="spinner" style="display:none;">--}%
%{--        <g:message code="spinner.alt" default="Loading&hellip;"/>--}%
%{--    </div>--}%

<asset:javascript src="application.js"/>

</body>
</html>
