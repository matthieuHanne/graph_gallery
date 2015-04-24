// Generated by CoffeeScript 1.6.1
(function() {

  define(['backbone'], function(Backbone) {
    'use strict';    return Backbone.View.extend({
      id: 'wrapper',
      tagName: 'div',
      initialize: function() {
        this.$el.append($('<div>').attr('id', 'sidebar'), $('<div>').attr('id', 'container'));
        $(document.getElementsByTagName('body')).append(this.$el);
        return this;
      },
      render: function(el, target, option) {
        var _ref;
        if (el instanceof Backbone.View) {
          el = el.$el;
        }
        target = (_ref = this.$el.find(target)) != null ? _ref : this.$el;
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
