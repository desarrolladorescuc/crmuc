
<%@ page import="crmuc.Cliente" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'cliente.label', default: 'Cliente')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-cliente" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-cliente" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="razonSocial" title="${message(code: 'cliente.razonSocial.label', default: 'Razon Social')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'cliente.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="direccion" title="${message(code: 'cliente.direccion.label', default: 'Direccion')}" />
					
						<g:sortableColumn property="nit" title="${message(code: 'cliente.nit.label', default: 'Nit')}" />
					
						<g:sortableColumn property="telefonos" title="${message(code: 'cliente.telefonos.label', default: 'Telefonos')}" />
					
						<g:sortableColumn property="idTipoCliente" title="${message(code: 'cliente.idTipoCliente.label', default: 'Id Tipo Cliente')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${clienteInstanceList}" status="i" var="clienteInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${clienteInstance.id}">${fieldValue(bean: clienteInstance, field: "razonSocial")}</g:link></td>
					
						<td>${fieldValue(bean: clienteInstance, field: "email")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "direccion")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "nit")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "telefonos")}</td>
					
						<td>${fieldValue(bean: clienteInstance, field: "idTipoCliente")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${clienteInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
