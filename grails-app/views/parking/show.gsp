
<%@ page import="model.Parking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parking.label', default: 'Parking')}" />
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
			<div id="show-parking" class="content scaffold-show" role="main">
				<h1><g:message code="default.show.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
				</g:if>
				<form class="form-horizontal property-list parking">
				
					<g:if test="${parkingInstance?.cars}">
					<div class="form-group">
						<label id="cars-label" class="control-label col-sm-3 property-label"><g:message code="parking.cars.label" default="Cars" /></label>
						<div class="col-sm-9">
							
								<div class="list-group">
									<g:each in="${parkingInstance.cars}" var="c">
									<g:link class="list-group-item" controller="car" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link>
									</g:each>
								</div>
							
						</div>
					</div>
					</g:if>
				
					<g:if test="${parkingInstance?.description}">
					<div class="form-group">
						<label id="description-label" class="control-label col-sm-3 property-label"><g:message code="parking.description.label" default="Description" /></label>
						<div class="col-sm-9">
							
								<p class="form-control-static property-value" aria-labelledby="description-label"><g:fieldValue bean="${parkingInstance}" field="description"/></p>
							
						</div>
					</div>
					</g:if>
				
					<g:if test="${parkingInstance?.name}">
					<div class="form-group">
						<label id="name-label" class="control-label col-sm-3 property-label"><g:message code="parking.name.label" default="Name" /></label>
						<div class="col-sm-9">
							
								<p class="form-control-static property-value" aria-labelledby="name-label"><g:fieldValue bean="${parkingInstance}" field="name"/></p>
							
						</div>
					</div>
					</g:if>
				
				</form>
				<g:form url="[resource:parkingInstance, action:'delete']" method="DELETE">
					<fieldset class="buttons row">
						<div class="col-sm-offset-3 col-sm-9">
							<g:link class="edit btn btn-default" action="edit" resource="${parkingInstance}"><span class="glyphicon glyphicon-pencil"></span> <g:message code="default.button.edit.label" default="Edit" /></g:link>
							<g:actionSubmit class="delete btn btn-default" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
						</div>
					</fieldset>
				</g:form>
			</div>
		</div>
	</body>
</html>
