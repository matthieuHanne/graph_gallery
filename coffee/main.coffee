require.config
    baseUrl: require.appConfig.host
    paths:
        backbone: "lib/backbone"
        jquery: "lib/jquery"
        app: "app/app"
        templates: "app/templates"
        views: "app/views"
        underscore: "lib/lodash"
        google: "lib/client"
        d3: "lib/d3"
        graphs: "app/graphs"
        data: "app/data"
        waypoints: "lib/waypoints"
    shim:
        backbone:
            deps: ["underscore", "lib/jquery", "lib/jquery-ui"]
            exports: "Backbone"

define ["app"], (App) ->
    App.initialize()
