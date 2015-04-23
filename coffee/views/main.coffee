define ['backbone'], (Backbone) ->
    'use strict';

    return Backbone.View.extend
        id: 'wrapper'
        tagName: 'div'
        initialize: () ->
            this.$el.append $('<div>').attr('id', 'sidebar'), $('<div>').attr('id', 'container')
            $(document.getElementsByTagName('body')).append(this.$el)
            return this;

        render: (el, target, option) ->
            #TODO: dig instanceof vs Class.constructor.name
            if el instanceof Backbone.View
                el = el.$el;

            target = this.$el.find(target) ? this.$el;

            if option is 'overwrite'
                target.empty().append(el);
            else
                target.append(el);

            return this;
