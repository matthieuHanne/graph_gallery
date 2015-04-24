define ['backbone', 'graphs/price','text!templates/price.tpl', 'd3'], (Backbone, priceGraph, tpl, d3) ->
	return Backbone.View.extend
		tagName: 'section'
		className: 'section'
		id: 'visualization'
		template: _.template(tpl)
		initialze: () -> this
		render: () ->
			@$el.html(@template)
			d3.csv "app/data/price.csv", (data) -> 
				formatDate = d3.time.format("%b %Y")
				d3.select("#graph").datum(data).call(priceGraph().y((d)-> +d.price ).x((d) -> formatDate.parse(d.date)))
				return this
			return this
