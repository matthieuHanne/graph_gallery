define ['backbone', 'graphs/frequency','text!templates/frequency.tpl', 'd3'], (Backbone, frequencyGraph, tpl, d3) ->
	return Backbone.View.extend
		tagName: 'section'
		className: 'section'
		id: 'visualization'
		template: _.template(tpl)
		initialze: () -> 
			@graph = frequencyGraph().width(200).height(200)
			@data = @options.data || [];
		render: () ->
			@$el.html(@template)
			@g = d3.select("#graph")
				.append("svg")
				.append("g")
				.attr("transform", "translate(0, 0)")
				.data(@data).call(@graph);
			return this
