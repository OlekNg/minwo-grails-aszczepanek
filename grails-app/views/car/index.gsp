
<%@ page import="model.Car" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'car.label', default: 'Car')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<div class="container">
			<div class="navbar navbar-default" role="navigation">
				<ul class="nav navbar-nav">
					<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
					<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				</ul>
			</div>
			<div id="list-car" class="content scaffold-list" role="main">
				<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-hover table-striped table-bordered">
				<thead>
						<tr>
						
							<g:sortableColumn property="model" title="${message(code: 'car.model.label', default: 'Model')}" />
						
							<th><g:message code="car.parking.label" default="Parking" /></th>
						
							<g:sortableColumn property="producer" title="${message(code: 'car.producer.label', default: 'Producer')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${carInstanceList}" status="i" var="carInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${carInstance.id}">${fieldValue(bean: carInstance, field: "model")}</g:link></td>
						
							<td>${fieldValue(bean: carInstance, field: "parking")}</td>
						
							<td>${fieldValue(bean: carInstance, field: "producer")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${carInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
