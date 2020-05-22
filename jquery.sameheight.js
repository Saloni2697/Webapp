/*
 * Jquery Sameheight Responsive
 * https://github.com/DiederikLascaris/jquery-sameheight
 *
 * Author: D. Lascaris (Runesa)
 * Version: 1.1
 *
 * Licensed under the MIT license.
 *
 */


;(function($) {

    $.fn.sameheight = function() {
        var maxHeight = 0,
        $this = $(this);
        thisSelector = $this.selector;

        $this.each( function() {
            // reset the height
            $(this).css({'height':'auto'});
            var thisHeight = $(this).height();
            if ( thisHeight > maxHeight ) {
                maxHeight = thisHeight;
            }
        });

        // Setting the same height for all elements.
        return $this.height(maxHeight);

    };

    // Bind the used expression to the resize event.
    $( window ).resize(function() {
           $(thisSelector).sameheight();
        });

})(jQuery);