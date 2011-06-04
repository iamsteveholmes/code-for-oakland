<%@ page import="com.freetread.entities.Post" %>



<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'subject', 'error')} ">
	<label for="subject">
		<g:message code="post.subject.label" default="Subject" />
		
	</label>
	<g:textField name="subject" value="${postInstance?.subject}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="post.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${postInstance?.location}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="post.description.label" default="Description" />
		
	</label>
	<g:textArea name="description" cols="40" rows="5" maxlength="2048" value="${postInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="post.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day" value="${postInstance?.date}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'post_id', 'error')} required">
	<label for="post_id">
		<g:message code="post.post_id.label" default="Postid" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="post_id" required="" value="${fieldValue(bean: postInstance, field: 'post_id')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'previous', 'error')} required">
	<label for="previous">
		<g:message code="post.previous.label" default="Previous" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="previous" required="" value="${fieldValue(bean: postInstance, field: 'previous')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: postInstance, field: 'type', 'error')} ">
	<label for="type">
		<g:message code="post.type.label" default="Type" />
		
	</label>
	<g:textField name="type" value="${postInstance?.type}"/>
</div>

