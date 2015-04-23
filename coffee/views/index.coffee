define ['backbone', 'text!templates/index.tpl'], (Backbone,tpl) ->
    'use strict'

    return Backbone.View.extend
        id: 'section1',
        tagName: 'section',
        className: 'section',
        render: (tpl) ->
            $(@el).html(_.template(tpl));
            return this

#TODO: Inerith !
#constructor: (id) ->
#    @id = "section#{id}"
