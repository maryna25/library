$(document).ready(function(){
    $("#btn1").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/first_task",
          data: { price: $("#input1").val() }
          });
    });
    $("#btn2").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/second_task",
          data: { genre: $("#input2").val() }
          });
    });
});
