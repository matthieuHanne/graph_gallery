define ["d3"], (d3) ->
	'use strict'

	graph = ()->

		margin = {top: 20, right: 20, bottom: 30, left: 40}
		width = 960 - margin.left - margin.right
		height = 500 - margin.top - margin.bottom
		x = d3.scale.ordinal()
			.rangeRoundBands([0, width], .1)
		y = d3.scale.linear()
			.range([height, 0])
		xAxis = d3.svg.axis()
			.scale(x)
			.orient("bottom")
		yAxis = d3.svg.axis()
			.scale(y)
			.orient("left")
			.ticks(10, "%")
	
		graph = (selection) ->
			selection.selectAll(".bar")
				.data((d) -> d)
				.enter().append("rect")
				.attr("class"," bar")
				.attr("x", (d) -> x(d.letter))
				.attr("y", (d) -> y(d.frequency))
				.attr("width", x.rangeBand())
				.attr("height", (d) -> height - y(d.frequency))

			selection.append("g")
				.attr("class", "x axis")
				.attr("transform", "translate(0," + height + ")")
				.call(xAxis);

			selection.append("g")
				.attr("class", "y axis")
				.call(yAxis)
				.append("text")
				.attr("transform", "rotate(-90)")
				.attr("y", 6)
				.attr("dy", ".71em")
				.style("text-anchor", "end")
				.text("Frequency")
	
			return this

		graph.width = (value) -> 
			if (!arguments.length) then return width
			width = value
			return graph

		graph.height = (value) ->
			if (!arguments.length) then return height
			height = value
			return graph

		return graph
	return graph
