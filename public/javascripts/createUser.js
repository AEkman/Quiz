$('#createUser').on('submit', function(e) {// When form is submitted
    console.log("Körs create user funktionen$?")
    e.preventDefault();                               // Prevent it being sent
    var details = $('#createUser').serialize();         // Serialize form data
    $.post('http://localhost:3000/settings', details, function(data) {  // Use $.post() to send it
        $('#content').html('Created successfully');                    // Where to display result
    });
});

