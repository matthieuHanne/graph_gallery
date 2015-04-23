// Generated by CoffeeScript 1.9.1
(function() {
  define(['backbone'], function(Backbone) {
    'use strict';
    return Backbone.View.extend({
      id: 'wrapper',
      tagName: 'div',
      initialize: function() {
        this.$el.append($('<div>').attr('id', 'sidebar'), $('<div>').attr('id', 'container'));
        $(document.getElementsByTagName('body')).append(this.$el);
        return this;
      },
      render: function(el, target, option) {
        var ref;
        if (el instanceof Backbone.View) {
          el = el.$el;
        }
        target = (ref = this.$el.find(target)) != null ? ref : this.$el;
        if (option === 'overwrite') {
          target.empty().append(el);
        } else {
          target.append(el);
        }
        return this;
      }
    });
  });

}).call(this);