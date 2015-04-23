define ['backbone', 'text!templates/mySelf.tpl', 'text!templates/resume.tpl', 'text!templates/skills.tpl'], (Backbone, tpl, resumeTpl, skillsTpl) ->
    'use strict'

    return Backbone.View.extend
        tagName: 'section',
        className: 'section',
        id: 'section2',
        initialze	: () ->
            console.log "myself init"
            return this
        render: () ->
            $(@el).html(_.template(tpl))
            return this
        showTopic : ()->
            this.$el.find(".focus").slideUp("slow", "easeOutQuart").html(_.template(skillsTpl)).slideDown("slow", "easeInQuart")
            return this
        events: 'click li': 'showTopic'

