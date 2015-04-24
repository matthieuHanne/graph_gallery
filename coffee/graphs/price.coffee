define ["d3"], (d3) ->
	'use strict'
	price = ()->
		margin = {top: 20, right: 20, bottom: 20, left: 20}
		width = 720
		height = 80
		width = 760
		height = 120
		xValue = (d) -> d[0]
		yValue = (d) -> d[1]
		xScale = d3.time.scale()
		yScale = d3.scale.linear()
		xAxis = d3.svg.axis().scale(xScale).orient("bottom").tickSize(6, 0)
		area = d3.svg.area().x(X).y1(Y)
		line = d3.svg.line().x(X).y(Y)
		
		graph = (selection) ->
			selection.each( (data) ->
				data = data.map((d,i) -> [xValue.call(data, d, i), yValue.call(data, d, i)])
				xScale
					.domain(d3.extent(data, (d) -> d[0]))
					.range([0,width - margin.left - margin.right])
				yScale
					.domain([0, d3.max(data, (d) -> d[1] )])
					.range([0,height - margin.top - margin.bottom, 0])

				#Select the svg element, if it exists.
				svg = d3.select(this).selectAll("svg").data([data])

				gEnter = svg.enter().append("svg").append("g")
				gEnter.append("path").attr("class", "area");
				gEnter.append("path").attr("class", "line");
				gEnter.append("g").attr("class", "x axis");
				#accessor

				# Update the outer dimensions.
				svg .attr("width", width)
				.attr("height", height);

				# Update the inner dimensions.
				g = svg.select("g")
				.attr("transform", "translate(" + margin.left + "," + margin.top + ")");

				# Update the area path.
				g.select(".area")
				.attr("d", area.y0(yScale.range()[0]));

				# Update the line path.
				g.select(".line")
				.attr("d", line);

				# Update the x-axis.
				g.select(".x.axis")
				.attr("transform", "translate(0," + yScale.range()[0] + ")")
				.call(xAxis);
			)

		X = (d) -> xScale(d[0])
		Y = (d) -> yScale(d[1])

		graph.x = (val) ->
			if (!arguments.length) then return xValue
			xValue = val
			return graph

		graph.y = (val) ->
			if (!arguments.length) then  return yValue
			yValue = val
			return graph

		return graph;
	return price
