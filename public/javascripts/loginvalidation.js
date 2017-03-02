$(document).ready(function(){
console.log("I Jquery");


//going to be used to store data from dummydata.json
var data;
    
//Get the email from login.ejs
var email = document.getElementById("email");

//Get password from login.ejs
var password = document.getElementById("password");

//Connect to the dummydata.json file
    function readTextFile(file, callback) {
        var rawFile = new XMLHttpRequest();
        rawFile.overrideMimeType("application/json");
        rawFile.open("GET", file, true);
        rawFile.onreadystatechange = function() {
            if (rawFile.readyState === 4 && rawFile.status == "200") {
                callback(rawFile.responseText);
            }
        }
        rawFile.send(null);
    }

//Read and get dummydata.json data.
readTextFile("../dummydata", function(text){
    data = JSON.parse(text);
    console.log(data);
    console.log('in read json file');
});

    //On button click get json from
    $("#loginbtn").click(function(event){
        console.log('email from form'+email+' password from form'+password);
        //loop though the users and compare them with input from login.ejs
        for (var i = 0; i < data.user[i].length; i++)
        {
            if ((email == data.user[i].mail) && (password == data.user[i].password))
            {
                console.log("success");
            }

            else
            {
                event.preventDefault();
                alert ("Login was unsuccessful, please check your username and password");
            }
        }
        event.preventDefault();
    });

});