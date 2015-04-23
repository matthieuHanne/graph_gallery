define ['backbone', 'text!templates/menu.tpl', 'waypoints'], (Backbone, tpl)->
    'use strict';

    return Backbone.View.extend
        initialize: () ->
            console.log "menu init"
            return this
        render: () ->
            this.$el.html(_.template(tpl));
            return this;
        'initScroll': ()->
            $('section').waypoint (direction) ->
                sectionId = parseInt($(@element).attr('id').substr($(@element).attr('id').length-1));
                if direction is 'down'
                    $('.navigation li[section="' + sectionId + '"]').addClass('active').siblings().removeClass('active')
                else
                    $('.navigation li[section="' + (sectionId-1) + '"]').addClass('active').siblings().removeClass('active')
                return this;
            return this;
        toggleSidebar: ()->
            $('html').toggleClass('expanded');
            return this;
        goTo: (evt) ->
            section = evt.currentTarget.getAttribute('section')
            htmlbody = $('html,body');
            if section is 1
                htmlbody.animate({scrollTop: $('#section' + section).offset().top}, 500, 'easeOutQuart');
            else
                htmlbody.animate({scrollTop: $('#section' + section).offset().top + 70}, 500, 'easeOutQuart');
            return this;
        events:
            'click .btn-navbar' : 'toggleSidebar',
            'click .navigation li' : 'goTo'
