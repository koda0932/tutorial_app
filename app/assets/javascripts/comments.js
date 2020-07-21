$(function () {
  var reply = [];
  for (var i = 1; i <= 1000; i++) {
    reply.push(i);
  }

  $.each(reply, function (index, value) {
    $("#reply-form" + value).hide();
    $("#reply-btn" + value).on("click", function () {
      $("#reply-form" + value).show();
    });
    $(".content__show__comment__bottom__reply__btn__cansel").on(
      "click",
      function () {
        $("#reply-form" + value).hide();
      }
    );
  });
});
