define ['backbone', 'd3', 'text!templates/tree.tpl'], (Backbone, d3,  tpl) ->
    'use strict';

    return Backbone.View.extend
        tagName: 'section',
        className: 'section',
        id: 'section4',
        initialze: () ->
            this.collection = this.options.collections
            this.collection.on('reset add remove change', _.bind(this.update, this));
            return this;

        render: () ->
            this.$el.html(_.template(tpl));
            return this;
