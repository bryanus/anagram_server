$(document).ready(function(){
    $('<p><span id="list"></span><p>').appendTo("form");
    // create span to insert into
    $("form").submit(function(e) {
        e.preventDefault();

        var data = ($(this).serialize());

        $.ajax({
          type: "GET",
          url: '/',
          data: data,
          }).done(function(data) {
          console.log(data);
          

          $("#list").html(data);
          

        });

          return false;
    });
});
