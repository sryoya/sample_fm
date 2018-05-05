//曲を再生
$(function(){
  $("audio").on('play', function(){
    var now = $(this).attr("id");
  });
});

//次の曲を自動再生
function playNextSong(next_scheduled_song_id){
  var next_playing_id = next_scheduled_song_id - 0 + 1;
  var next_audio = $('#song_num' + next_playing_id);
  if(next_audio.length != 0){
    next_audio[0].play();
  }else if($("audio").length != 0){
    playNextSong(next_playing_id)
  }
  $(this).parents("li.media.center-block").remove();
};

//曲が終了⇛そのまま次の曲を自動再生
$(function(){
  $("audio").on('ended', function(){
    var next_playing_id = $(this).attr('id').match(/[0-9]+\.?[0-9]*/g)[0];
    playNextSong(next_playing_id)
  });
});


$(function(){
  $("audio").on('play', function(){
    var other_audio = $("audio").not(this);
    $.each(other_audio, function(i, audio){
      audio.pause();
    });
  });
});


//モーダル表示用
// $(function(){
//   $("#myModal").on('click', function(){
//     $('#form-body').html("<%=j render 'modal' %>")
//     $('#form').modal('show')
//   });

  // $("#song_num").bind("ended", function(){
  // $(".btn-default").on('click', function(){
  //   alert("aaa")
  //   var now = $(this).attr("class");
  //   alert(now)
  // });
  // //   if($("#m" + num2).get(0).ended){nextSong();}
  // });
// });
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
