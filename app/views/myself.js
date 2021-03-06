// Generated by CoffeeScript 1.9.1
(function() {
  define(['backbone', 'text!templates/mySelf.tpl', 'text!templates/resume.tpl', 'text!templates/skills.tpl'], function(Backbone, tpl, resumeTpl, skillsTpl) {
    'use strict';
    return Backbone.View.extend({
      tagName: 'section',
      className: 'section',
      id: 'section2',
      initialze: function() {
        console.log("myself init");
        return this;
      },
      render: function() {
        $(this.el).html(_.template(tpl));
        return this;
      },
      showTopic: function() {
        this.$el.find(".focus").slideUp("slow", "easeOutQuart").html(_.template(skillsTpl)).slideDown("slow", "easeInQuart");
        return this;
      },
      events: {
        'click li': 'showTopic'
      }
    });
  });

}).call(this);
