$(document).ready(function(){
    $("#btn1").click(function(){
      request = $.ajax({
          type: "POST",
          url: "/welcome/first_task",
          data: { price: $("#input1").val() },
          success: function(result){
            $("#div1").text() = result;
          }});
    });
    $("#btn2").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/second_task",
          data: { genre: $("#input2").val() },
          success: function(result){
            $("#div2").html(result);
          }});
    });
    $("#btn3").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/third_task",
          data: { genre: $("#input3").val() },
          success: function(result){
            $("#div3").html(result);
          }});
    });
    $("#btn4").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/task4",
          data: { genre: $("#input4").val() },
          success: function(result){
            $("#div4").html(result);
          }});
    });
    $("#btn5").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/task5",
          data: { price: $("#input5").val() },
          success: function(result){
            $("#div5").html(result);
          }});
    });
    $("#btn6").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/task6",
          data: { name: $("#input6").val() },
          success: function(result){
            $("#div6").html(result);
          }});
    });
    $("#btn7").click(function(){
        $.ajax({
          type: "POST",
          url: "/welcome/task7",
          data: { name: $("#input7").val() },
          success: function(result){
            $("#div7").html(result);
          }});
    });
});
