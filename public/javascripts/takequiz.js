$( document ).ready(function() {
    $(".checkbox").change( function() {
        if ( $(this).is(":checked") ) {
            alert("checked");
        } else if ( $(this).not(":checked") ) {
            alert("unchecked");
        }
    });
});