define ["backbone", "d3"], (Backbone, d3) ->
	"use strict"
	App = _.extend
		config: require.appConfig,
		initialize: () ->
			require(["views/main", "views/frequency"], (MainView, FrequencyView) =>
				type = (d) -> d.frequency = +d.frequency
				d3.tsv "app/data/eng.tsv", type, (error, data) ->
					frequencyView = new FrequencyView({data: data}) 
					view = new MainView($('#main'))
					view.render(frequencyView.render(),'#container')
					frequencyView.renderGraph()
				return this
			)
			return this
	window.App = App;
