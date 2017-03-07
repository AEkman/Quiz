$("#takequizform").on("submit", function(){
    recalculate();
});


function recalculate(){
    var obj = {};

    obj.stored_quizScore = 0;

    $("input[type=checkbox]:checked").each(function(){
        if($(this).val()==1) {
            obj.stored_quizScore += parseInt($(this).val());
        } else {
            obj.stored_quizScore --;
        }
    });

    $.ajax({
        type: 'POST',
        url: '/takequiz/:id',
        data: obj,
        success: function (result) {
            $('#answer').html(result);
        },
        error: function (xhr, status, error) {
            console.log('Error: ')
        }
    });

    console.log(obj);
}



