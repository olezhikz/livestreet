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
            params: {}
        },        

        _create: function () {
            this._super();
            
           this._on(this.elements.buttons, {click:"onClick"});
            
        },
        
        
        onClick:function(e){
            this.elements.buttons.removeClass('ls-button.active').prop('disabled', false);
            $(e.currentTarget).addClass('ls-button.active').prop('disabled', true);
            
            this._trigger( 'aftertoggle', null, { context: this, button: e.currentTarget } );
        }
    });
})(jQuery);
