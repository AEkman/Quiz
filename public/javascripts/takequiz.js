$( document ).ready(function() {
    var points = 0;
    $("form input:checkbox").on('change', function() {
        if ( $(this).is(":checked") ) {
            if ($(this).val = 1) {
                points++;
            } else {
                points--;
            }
        } else if ( $(this).not(":checked") ) {

        }
        alert(points);
    });
});