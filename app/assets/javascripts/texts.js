$(document).on("turbolinks:load", function(){
  submitTextFormListener();
});

var submitTextFormListener = function(){
  $("#text-form").on("ajax:success", function(event, response){
    console.log("Ajax successful");

    $("#text-form").html('<strong>' + response.extra_spaces + '</strong>' + "<br>" + response.corrected_text).addClass("card text-justify text-success").css({backgroundColor: "#eeeeee", borderRadius: "5px", padding: "20px" }).after('<p>' +'<a href="/" class="btn btn-primary btn-lg btn-block">Submit new text</a>' + '</p>');
  })

  $("#text-form").on("ajax:error", function(event, response){
    console.log("Ajax unsuccessful");
  })
}
