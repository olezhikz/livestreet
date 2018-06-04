(function($) {
    "use strict";

    $.widget( "livestreet.lsToggleButtons", $.livestreet.lsComponent, {
        /**
         * Дефолтные опции
         */
        options: {
            selectors:{
                buttons:".js-item-toggle"
                
            },
            classes:{
                active:"active"
            },
            params: {}
        },   
        activeItem:null,

        _create: function () {
            this._super();
            
           this._on(this.elements.buttons, {click:"onClick"});
           this.activeItem = $(this.element.find( this.option('selectors.buttons') + '.active' ));
        },
        
        getActive:function(){
            return this.activeItem;
        },
        
        onClick:function(e){
            if(this.activeItem !== null){
                this.activeItem.removeClass( this.option('classes.active') );
                this._trigger( 'aftertogglefrom' + this.activeItem.attr('name'), null, { context: this, button: this.activeItem } );
            }
            
            this.activeItem = $(e.currentTarget);
                        
            this.activeItem.addClass( this.option('classes.active') );
                        
            this._trigger( 'aftertoggleto' + this.activeItem.attr('name'), null, { context: this, button: this.activeItem } );
        }
    });
})(jQuery);
