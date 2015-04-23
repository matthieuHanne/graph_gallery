require.config
    baseUrl: require.appConfig.host,
    paths:
        backbone: "lib/backbone",
        app: "app/app",
        templates: "app/templates"
        views: "app/views",
        underscore: "lib/lodash",
        google: "lib/client"
        d3: "lib/d3"
        waypoints: "lib/waypoints"
    shim:
        backbone:
            deps: ["underscore", "lib/jquery", "lib/jquery-ui"],
            exports: "Backbone"

define ["app"], (App) ->
    App.initialize()
