define ['backbone', 'text!templates/projects.tpl'], (Backbone, tpl) ->
    'use strict';

    return Backbone.View.extend
        'tagName'	: 'section',
        'className'	: 'section',
        'id': 'section3',
        'initialze'	: () ->
             console.log "project init"
             return this
        'render': () ->
            this.$el.html(_.template(tpl));
            return this;
