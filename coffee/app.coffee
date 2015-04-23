define ["backbone"], (Backbone) ->
    "use strict";

    App = _.extend
        config: require.appConfig,
        initialize: () ->
            require ["views/main", "views/index", "views/myself", "views/projects", "views/contact", "views/tree","views/menu"], (MainView, IndexView, MyselfView, ProjectsView, ContactView, TreeView, MenuView) =>
                @view = new MainView($('#main'))
                @view.render((new IndexView()).render(), '#container')
                @view.render((new MyselfView()).render(), '#container')
                @view.render((new ProjectsView()).render(),'#container')
                @view.render((new ContactView()).render(),'#container')
                @view.render((new TreeView()).render(),'#container')
                #Menu at last, because he load his elements from
                @view.render((new MenuView()).render().initScroll(), '#sidebar');
                return this
            return this



    window.App = App;
#App.view.render((new AboutViewContact()).render(),'#container');
#get projects from API
