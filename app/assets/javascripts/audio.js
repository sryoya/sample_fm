$(function(){
  $("#myModal").on('click', function(){
    $('#form-body').html("<%=j render 'modal' %>")
    $('#form').modal('show')
  });
  // $("#song_num").bind("ended", function(){
  // $(".btn-default").on('click', function(){
  //   alert("aaa")
  //   var now = $(this).attr("class");
  //   alert(now)
  // });
  // //   if($("#m" + num2).get(0).ended){nextSong();}
  // });
});
// function nextSong(){
//   $(function(){
//     var num = $(".music").length;
//     if ($("#" + num).length == 0) {
//       $("#error").text("＊ 最後の曲です ＊");
//     }
//     else {
//       $("#" + (num - 1)).css("display", "none");
//       $("#" + num).addClass("music");
//       $("#" + num).show();
//       stopSong(num - 1);alert("aaa")
//       playSong(num);
//     }
//   });
// };

// function playSong(num2){
//   $(function(){
//     $("#error").text("");
//     $("#" + num2).get(0).play();
//   });
// };

$(function(){
  $("audio").on('play', function(){
    var now = $(this).attr("id");
  });
  // $("#song_num").bind("ended", function(){

  //   if($("#m" + num2).get(0).ended){nextSong();}
  // });
});


