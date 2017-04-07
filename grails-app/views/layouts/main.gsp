<!doctype html>
<html lang="en" class="no-js">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <title>
        <g:layoutTitle default="Grails"/>
    </title>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>

    <asset:stylesheet src="application.css"/>
    <asset:link rel="icon" href="kungfu_icon.png" type="image/x-ico" />

    <g:layoutHead/>
</head>
<body>

    <div class="navbar navbar-default navbar-static-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/#">
                    <i class="fa grails-icon">
                        <asset:image src="grails-cupsonly-logo-white.svg"/>
                    </i> Grails
                </a>
            </div>
            <div class="navbar-collapse collapse" aria-expanded="false" style="height: 0.8px;">
                <sec:ifLoggedIn>
                    <p class="nav navbar-text navbar-right">
                      <g:link url="/logout"><sec:username/> - logout</g:link> 
                    </p>
                </sec:ifLoggedIn>
            </div>
        </div>
    </div>
	<div class="container-fluid">
        <div class="row">
            <sec:ifLoggedIn>
            <nav class="col-sm-3 col-md-2 hidden-xs-down bg-faded sidebar">
                <ul class="nav nav-pills flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="#">Overview <span class="sr-only">(current)</span></a>
                    </li>
                    <g:each var="c" in="${['address','classes','enroll','guardian','instructor','product','purchase','rank','rankhistory','registerStudent','session','student']}">
                        <li class="nav-item">
                        <g:link class="nav-link" controller="${c}">${c}</g:link>
                        </li>
                    </g:each>
                </ul>
            </nav>
            </sec:ifLoggedIn>

            <main class="col-sm-9 offset-sm-3 col-md-10 offset-md-2 pt-3">
                <g:layoutBody/>
            </main>
        </div>
    </div>

    <div class="footer" role="contentinfo"></div>

    <div id="spinner" class="spinner" style="display:none;">
        <g:message code="spinner.alt" default="Loading&hellip;"/>
    </div>

    <asset:javascript src="application.js"/>

</body>
</html>
