<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'student.label', default: 'Student')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <a href="#create-student" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
        <div class="nav" role="navigation">
            <ul>
                <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
                <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
            </ul>
        </div>
        <div id="create-student" class="content scaffold-create" role="main">
          <g:hasErrors bean="${student}">
          <ul class="errors" role="alert">
              <g:eachError bean="${student}" var="error">
              <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
              </g:eachError>
              <g:eachError bean="${address}" var="error">
              <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
              </g:eachError>
          </ul>
          </g:hasErrors>
          <g:form action="save" >
		<f:with bean="student">
		 <f:field prefix="student." property="firstName"/>
		 <f:field prefix="student." property="lastName"/>
		 <f:field prefix="student." property="studentNumber"/>
		 <f:field prefix="student." property="email"/>
		 <f:field prefix="student." property="birthDate"/>
		 <f:field prefix="student." property="mobileNumber"/>
		 <f:field prefix="student." property="enrollDate"/>
		</f:with>
		<legend>Address:</legend>
		<hr/>
		<f:with bean="address">
		 <f:field prefix="address." property="street"/>
		 <f:field prefix="address." property="city"/>
		 <f:field prefix="address." property="state"/>
		</f:with>
              <g:submitButton name="create" value="Save" />
          </g:form>
        </div>
    </body>
</html>
