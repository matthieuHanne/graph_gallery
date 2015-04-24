define ["backbone"], (Backbone) ->
    "use strict";

    App = _.extend
        config: require.appConfig,
        initialize: () ->
            require ["views/main", "views/price"], (MainView, PriceView) =>
                @view = new MainView($('#main'))
                @view.render((new PriceView()).render(),'#container')
                return this
            return this


    window.App = App;
