var time;
loadQuizes.forEach(function (quiz) {
    time = quiz.times;
});

function countdown(minutes) { // we only use minutes as we have chosen so..

    var seconds = 60;
    var mins = minutes; // get the approciate link to the input.
    function downcount() {
        var counter = document.getElementById("countdown");
        var current_minutes = mins-1; // count down minutes
        seconds--; // counting down seconds
        counter.innerHTML = current_minutes.toString() + ":" + (seconds < 10 ? "0" : "") + String(seconds); // displays the remaoining time
        if( seconds > 0 ) {  // if statement that check for decreased time, that minutes is counted dowwn.
            setTimeout(downcount, 100);
        } else {
            if(mins > 1){
                countdown(mins-1);
            }
        }
        if (seconds === 0){
            window.location.replace("/results");
        }
    }
    downcount();
}
countdown(time);