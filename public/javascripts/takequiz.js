$("#takequizform").on("submit", function(){
    recalculate();
});


function recalculate(){
    var obj = {};

    obj.stored_quizScore = 0;

    $("input[type=checkbox]:checked").each(function(){
        if($(this).val()==1) {
            obj.stored_quizScore += parseInt($(this).val());
            // $(this).css("margin", "2px");
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

    $("#replacewithscore").replaceWith( "<h2>Quiz Finished! - You scored " + obj.stored_quizScore +"</h2>" );

    if ($("input[type=checkbox]").val()==0) {
        $(this).css("color", "red");
    } else {

    }
    console.log(obj);
}



