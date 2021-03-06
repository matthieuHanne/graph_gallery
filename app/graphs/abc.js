// Generated by CoffeeScript 1.6.1
(function() {

  define(["d3"], function(d3) {
    'use strict';
    var frequency;
    frequency = function() {
      var X, Y, area, graph, height, line, margin, width, xAxis, xScale, xValue, yAxis, yScale, yValue;
      margin = {
        top: 20,
        right: 20,
        bottom: 20,
        left: 20
      };
      width = 720;
      height = 120;
      graph = function(selection) {
        return selection.each(function(data) {
          var g, gEnter, svg;
          data = data.map(function(d, i) {
            return [xValue.call(data, d, i), yValue.call(data, d, i)];
          });
          xScale.domain(d3.extent(data, function(d) {
            return d[0];
          })).range([0, width - margin.left - margin.right]);
          yScale.domain([
            0, d3.max(data, function(d) {
              return d[1];
            })
          ]).range([0, height - margin.top - margin.bottom, 0]);
          svg = d3.select(this).selectAll("svg").data([data]);
          gEnter = svg.enter().append("svg").append("g");
          gEnter.append("path").attr("class", "area");
          gEnter.append("path").attr("class", "line");
          gEnter.append("g").attr("class", "x axis");
          svg.attr("width", width).attr("height", height);
          g = svg.select("g").attr("transform", "translate(" + margin.left + "," + margin.top + ")");
          g.select(".area").attr("d", area.y0(yScale.range()[0]));
          g.select(".line").attr("d", line);
          return g.select(".x.axis").attr("transform", "translate(0," + yScale.range()[0] + ")").call(xAxis);
        });
      };
      xScale = d3.scale.original().rangeRoundBands([0, width], .1);
      yScale = d3.scale.linear().range([height, 0]);
      xAxis = d3.svg.axis().scale(xScale).orient("bottom");
      yAxis = d3.svg.acis().scale(yScale).orient('left').ticks(10, "%");
      xValue = function(d) {
        return d[0];
      };
      yValue = function(d) {
        return d[1];
      };
      area = d3.svg.area().x(X).y1(Y);
      line = d3.svg.line().x(X).y(Y);
      X = function(d) {
        return xScale(d[0]);
      };
      Y = function(d) {
        return yScale(d[1]);
      };
      graph.margin = function(val) {
        if (!arguments.length) {
          return margin;
        }
        margin = val;
        return graph;
      };
      graph.width = function(val) {
        if (!arguments.length) {
          return width;
        }
        width = val;
        return graph;
      };
      graph.height = function(val) {
        if (!arguments.length) {
          return height;
        }
        height = val;
        return graph;
      };
      graph.x = function(val) {
        if (!arguments.length) {
          return xValue;
        }
        xValue = val;
        return graph;
      };
      graph.y = function(val) {
        if (!arguments.length) {
          return yValue;
        }
        yValue = val;
        return graph;
      };
      return graph;
    };
    return price;
  });

}).call(this);
