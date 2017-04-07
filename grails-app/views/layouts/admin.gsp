<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Grails Admin</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <asset:stylesheet src="admin"/>
    <asset:stylesheet src="jquery-2.2.0.min"/>
    <asset:stylesheet src="bootstrap"/>
    <asset:javascript src="admin"/>
    <asset:javascript src="bootstrap"/>

    <link rel="shortcut icon" href="${resource(dir: 'img', file: 'favicon.ico')}" type="image/x-icon">
    <!-- Le HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

    <g:layoutHead/>
</head>

<body>

    <nav class="navbar navbar-default navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <g:link controller="admin" class="navbar-brand">Grails Admin</g:link>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
        	<ul class="nav navbar-nav">
                    <li class="active"><g:link controller="user" action="list">Users</g:link></li>

                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Content <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><g:link controller="wikiPageAdmin" action="list">Wiki Pages</g:link></li>
                            <li><g:link controller="contentPendingApproval" action="list">Approval Queue</g:link></li>
                        </ul>
                    </li>

                    <li class="dropdown active">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Plugins <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><g:link controller="pluginAdmin" action="list">Plugin List</g:link></li>
                            <li><g:link controller="pendingRelease" action="list">Pending Releases</g:link></li>
                            <li><g:link controller="pluginPendingApproval" action="list">Approval Queue</g:link></li>
                        </ul>
                    </li>
                    <li class="active"><g:link controller="ratingLink" action="list">Ratings</g:link></li>
                    <li><g:link uri="/">Back to site</g:link></li>
                </ul>

		<p class="nav navbar-text navbar-right">
		<sec:ifLoggedIn>
		Logged in as <sec:username/>
		</sec:ifLoggedIn>
		Logged in as ${getPrincipal().username} | <g:link controller="user" action="logout">logout</g:link>
		</p>        
        </div><!--/.nav-collapse -->
      </div>
    </nav>
    
<div class="container">
    <g:layoutBody/>
</div>

<asset:deferredScripts/>

<script type="text/javascript">
    $(function() {
        $('.dropdown-toggle').dropdown();
    });
</script>

</body>
</html>
