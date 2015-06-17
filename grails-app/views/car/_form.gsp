<%@ page import="model.Car" %>



<div class="form-group ${hasErrors(bean: carInstance, field: 'model', 'error')} required">
	<label class="control-label col-sm-3" for="model">
		<g:message code="car.model.label" default="Model" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="model" required="" value="${carInstance?.model}"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: carInstance, field: 'parking', 'error')} required">
	<label class="control-label col-sm-3" for="parking">
		<g:message code="car.parking.label" default="Parking" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:select id="parking" name="parking.id" from="${model.Parking.list()}" optionKey="id" required="" value="${carInstance?.parking?.id}" class="many-to-one"/>

	</div>
</div>

<div class="form-group ${hasErrors(bean: carInstance, field: 'producer', 'error')} required">
	<label class="control-label col-sm-3" for="producer">
		<g:message code="car.producer.label" default="Producer" />
		<span class="required-indicator">*</span>
	</label>
	<div class="col-sm-9">
		<g:textField class="form-control" name="producer" required="" value="${carInstance?.producer}"/>

	</div>
</div>

