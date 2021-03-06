// Generated by CoffeeScript 1.9.1
(function() {
  define(['backbone', 'text!templates/contact.tpl'], function(Backbone, tpl) {
    'use strict';
    return Backbone.View.extend({
      tagName: 'section',
      className: 'section',
      id: 'section4',
      initialze: function() {
        console.log("ContactView Init");
        return this;
      },
      render: function() {
        this.$el.html(_.template(tpl));
        return this;
      }
    });
  });

}).call(this);
