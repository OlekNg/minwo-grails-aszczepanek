
<%@ page import="model.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="navbar navbar-default" role="navigation">
				<ul class="nav navbar-nav">
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
			<div id="show-car" class="content scaffold-show" role="main">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<form class="form-horizontal property-list car">
				
					<g:if test="${carInstance?.model}">
					<div class="form-group">
						<label id="model-label" class="control-label col-sm-3 property-label"><g:message code="car.model.label" default="Model" /></label>
						<div class="col-sm-9">
							
								<p class="form-control-static property-value" aria-labelledby="model-label"><g:fieldValue bean="${carInstance}" field="model"/></p>
							
						</div>
					</div>
					</g:if>
				
					<g:if test="${carInstance?.parking}">
					<div class="form-group">
						<label id="parking-label" class="control-label col-sm-3 property-label"><g:message code="car.parking.label" default="Parking" /></label>
						<div class="col-sm-9">
							
								<p class="form-control-static property-value" aria-labelledby="parking-label"><g:link controller="parking" action="show" id="${carInstance?.parking?.id}">${carInstance?.parking?.encodeAsHTML()}</g:link></p>
							
						</div>
					</div>
					</g:if>
				
					<g:if test="${carInstance?.producer}">
					<div class="form-group">
						<label id="producer-label" class="control-label col-sm-3 property-label"><g:message code="car.producer.label" default="Producer" /></label>
						<div class="col-sm-9">
							
								<p class="form-control-static property-value" aria-labelledby="producer-label"><g:fieldValue bean="${carInstance}" field="producer"/></p>
							
						</div>
					</div>
					</g:if>
				
				</form>
				<g:form url="[resource:carInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons row">
						<div class="col-sm-offset-3 col-sm-9">
							<g:link class="edit btn btn-default" action="edit" resource="${carInstance}"><span class="glyphicon glyphicon-pencil"></span><g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
