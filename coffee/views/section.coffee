define ['backbone'], (Backbone) ->
	'use strict';

	return Backbone.View.extend
		tagName: 'section',
		className: 'section',
		constructor: (id) ->
            @id = "section#{id}"
            return this
		render: () ->
            console.log "Empty section n #{this.el.id}"
            return this
