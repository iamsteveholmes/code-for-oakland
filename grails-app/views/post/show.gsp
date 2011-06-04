
<%@ page import="com.freetread.entities.Post" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'post.label', default: 'Post')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-post" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-post" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list post">
			
				<g:if test="${postInstance?.subject}">
				<li class="fieldcontain">
					<span id="subject-label" class="property-label"><g:message code="post.subject.label" default="Subject" /></span>
					
						<span class="property-value" aria-labelledby="subject-label"><g:fieldValue bean="${postInstance}" field="subject"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="post.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${postInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="post.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${postInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="post.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${postInstance?.date}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.post_id}">
				<li class="fieldcontain">
					<span id="post_id-label" class="property-label"><g:message code="post.post_id.label" default="Postid" /></span>
					
						<span class="property-value" aria-labelledby="post_id-label"><g:fieldValue bean="${postInstance}" field="post_id"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.previous}">
				<li class="fieldcontain">
					<span id="previous-label" class="property-label"><g:message code="post.previous.label" default="Previous" /></span>
					
						<span class="property-value" aria-labelledby="previous-label"><g:fieldValue bean="${postInstance}" field="previous"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${postInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="post.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${postInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${postInstance?.id}" />
					<g:link class="edit" action="edit" id="${postInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
