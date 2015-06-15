<%@ page import="model.Car" %>



<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'model', 'error')} required">
	<label for="model">
		<g:message code="car.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="model" required="" value="${carInstance?.model}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'parking', 'error')} required">
	<label for="parking">
		<g:message code="car.parking.label" default="Parking" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="parking" name="parking.id" from="${model.Parking.list()}" optionKey="id" required="" value="${carInstance?.parking?.id}" class="many-to-one"/>

</div>

<div class="fieldcontain ${hasErrors(bean: carInstance, field: 'producer', 'error')} required">
	<label for="producer">
		<g:message code="car.producer.label" default="Producer" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="producer" required="" value="${carInstance?.producer}"/>

</div>

