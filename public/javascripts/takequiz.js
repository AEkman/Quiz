$("#takequizform").on("submit", function(){
    recalculate();
});


function recalculate(){
    var obj = {};

    obj.stored_quizScore = 0;

    $("input[type=checkbox]:checked").each(function(){
        obj.stored_quizScore += parseInt($(this).val());
    });

    $.ajax({
        type: 'POST',
        url: '/takequiz/:id',
        data: obj,
        success: function (data) {
            console.log('score sent to route' + data)
        },
        error: function (xhr, status, error) {
            console.log('Error: ')
        }
    });

    console.log(obj);
}



