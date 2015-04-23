define ['backbone', 'text!templates/contact.tpl'], (Backbone, tpl) ->
    'use strict';

    return Backbone.View.extend
        tagName: 'section',
        className: 'section',
        id: 'section4',
        initialze: () ->
            console.log "ContactView Init"
            return this;
        render: () ->
            this.$el.html(_.template(tpl));
            return this;
