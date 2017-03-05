$( document ).ready(function() {
    $("form input:checkbox").on('change', function() {
        if ( $(this).is(":checked") ) {

        } else if ( $(this).not(":checked") ) {

        }
    });
});