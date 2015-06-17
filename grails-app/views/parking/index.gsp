
<%@ page import="model.Parking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'parking.label', default: 'Parking')}" />
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
			<div id="list-parking" class="content scaffold-list" role="main">
				<h1><g:message code="default.list.label" args="[entityName]" /></h1>
				<g:if test="${flash.message}">
					<div class="message" role="status">${flash.message}</div>
				</g:if>
				<table class="table table-hover table-striped table-bordered">
				<thead>
						<tr>
						
							<g:sortableColumn property="description" title="${message(code: 'parking.description.label', default: 'Description')}" />
						
							<g:sortableColumn property="name" title="${message(code: 'parking.name.label', default: 'Name')}" />
						
						</tr>
					</thead>
					<tbody>
					<g:each in="${parkingInstanceList}" status="i" var="parkingInstance">
						<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
						
							<td><g:link action="show" id="${parkingInstance.id}">${fieldValue(bean: parkingInstance, field: "description")}</g:link></td>
						
							<td>${fieldValue(bean: parkingInstance, field: "name")}</td>
						
						</tr>
					</g:each>
					</tbody>
				</table>
				<div class="pagination">
					<g:paginate total="${parkingInstanceCount ?: 0}" />
				</div>
			</div>
		</div>
	</body>
</html>
