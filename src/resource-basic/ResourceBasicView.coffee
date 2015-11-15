
class ResourceBasicView extends FC.BasicView

	@mixin ResourceView

	dayGridClass: ResourceDayGrid


	renderHead: ->
		super
		@dayGrid.processHeadResourceEls(@headContainerEl)


	setResources: (resources) ->
		@dayGrid.setResources(resources)


	unsetResources: ->
		@dayGrid.unsetResources()


	renderStoredResources: ->
		if @isSkeletonRendered
			@renderDates()
			@updateSize()


	unrenderStoredResources: ->
		if @isSkeletonRendered
			@renderDates()
			@updateSize()
