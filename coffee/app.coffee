define ["backbone"], (Backbone) ->
    "use strict";

    App = _.extend
        config: require.appConfig,
        initialize: () ->
            require ["views/main", "views/tree"], (MainView, TreeView) =>
                @view = new MainView($('#main'))
                @view.render((new TreeView()).render(),'#container')
                return this
            return this



    window.App = App;
