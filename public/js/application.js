$(document).ready(function() {
  $("#formid").submit(function(event){
    event.preventDefault();

      $.ajax({
      type: "POST",
      url: "/grandma",
      data: $("#formid").serialize();
      success: function(data) {
        $("body").html(data);
      },
    }
      });
  });
});

