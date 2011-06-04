
<%@ page import="com.freetread.entities.Post" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-post" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="subject" title="${message(code: 'post.subject.label', default: 'Subject')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'post.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="description" title="${message(code: 'post.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="date" title="${message(code: 'post.date.label', default: 'Date')}" />
					
						<g:sortableColumn property="post_id" title="${message(code: 'post.post_id.label', default: 'Postid')}" />
					
						<g:sortableColumn property="previous" title="${message(code: 'post.previous.label', default: 'Previous')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${postInstanceList}" status="i" var="postInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${postInstance.id}">${fieldValue(bean: postInstance, field: "subject")}</g:link></td>
					
						<td>${fieldValue(bean: postInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "description")}</td>
					
						<td><g:formatDate date="${postInstance.date}" /></td>
					
						<td>${fieldValue(bean: postInstance, field: "post_id")}</td>
					
						<td>${fieldValue(bean: postInstance, field: "previous")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${postInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
