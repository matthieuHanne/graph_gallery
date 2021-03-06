// Generated by CoffeeScript 1.6.1
(function() {

  define(["backbone", "d3"], function(Backbone, d3) {
    "use strict";
    var App;
    App = _.extend({
      config: require.appConfig,
      initialize: function() {
        var _this = this;
        require(["views/main", "views/frequency"], function(MainView, FrequencyView) {
          var type;
          type = function(d) {
            return d.frequency = +d.frequency;
          };
          d3.tsv("app/data/eng.tsv", type, function(error, data) {
            var frequencyView, view;
            frequencyView = new FrequencyView({
              data: data
            });
            view = new MainView($('#main'));
            view.render(frequencyView.render(), '#container');
            return frequencyView.renderGraph();
          });
          return _this;
        });
        return this;
      }
    });
    return window.App = App;
  });

}).call(this);
