define ['backbone', 'graphs/frequency','text!templates/frequency.tpl', 'd3'], (Backbone, frequencyGraph, tpl, d3) ->
	return Backbone.View.extend
		tagName: 'section'
		className: 'section'
		id: 'visualization'
		template: _.template(tpl)
		initialize: (options) ->
			@data = options.data || []
			@data = [ 
				{name: "A", frequency: .08167},
				{name: "B", frequency: .01492},
				{name: "C", frequency: .02780},
				{name: "D", frequency: .04253},
				{name: "E", frequency: .12702}
			]
			@graph = frequencyGraph().width(900).height(100).data(@data)
			return this
		render: () ->
			@$el.html(@template)
			return this
		renderGraph: () ->
			@g = d3.select("#graph")
				.data(@data)
				.call(@graph)
			return this
