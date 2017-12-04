$(document).ready(function(){
    $("#btn1").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/first_task",
          data: { price: $("#input1").val() }});
          request.done(function (data) {
            console.log(data);
            $("#div1").html(data.responseText);
          });
          request.fail(function (data) {
            $("#div1").html(data.responseText);
          });
    });
    $("#btn2").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/second_task",
          data: { genre: $("#input2").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div2").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div2").html(data.responseText);
      });
    });
    $("#btn3").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/third_task",
          data: { genre: $("#input3").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div3").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div3").html(data.responseText);
      });
    });
    $("#btn4").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/task4",
          data: { genre: $("#input4").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div4").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div4").html(data.responseText);
      });
    });
    $("#btn5").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/task5",
          data: { price: $("#input5").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div5").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div5").html(data.responseText);
      });
    });
    $("#btn6").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/task6",
          data: { name: $("#input6").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div6").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div6").html(data.responseText);
      });
    });
    $("#btn7").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/task7",
          data: { name: $("#input7").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div7").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div7").html(data.responseText);
      });
    });
    $("#btn8").click(function(){
      request = $.ajax({
          type: "GET",
          url: "/welcome/task8",
          data: { name: $("#input8").val() }});
      request.done(function (data) {
        console.log(data);
        $("#div8").html(data.responseText);
      });
      request.fail(function (data) {
        $("#div8").html(data.responseText);
      });
    });
});
