$("#takequizform").on("submit", function(e){
    e.preventDefault();
    recalculate();
});

function recalculate(){
    var obj = {};

    obj.stored_quizScore = 0;

    $("input[type=checkbox]:checked").each(function(){
        if($(this).val()==1) {
            obj.stored_quizScore += parseInt($(this).val());
            // $(this).css("margin", "10px");
        } else {
            obj.stored_quizScore --;
        }
    });

    $.ajax({
        type: 'POST',
        url: '/takequiz/',
        data: obj,
        success: function (result) {
            console.log(result);
        },
        error: function (xhr, status, error) {
            console.log('Error: ')
        }
    });

    $("#replacewithscore").replaceWith( "<h2>Quiz Finished! - You scored " + obj.stored_quizScore  +"</h2>" );

    $("input[type=submit]").remove();

    $("#countdown").hide();

    if ($("input[type=checkbox]").val()==0) {
        $(this).css("color", "red");
    } else {

    }

}



