/*jshint esversion: 6 */

window.addEventListener('load', function() {

  //can't use right click
  document.addEventListener('contextmenu', event => event.preventDefault());




  //make a history and change page use History API and AJAX
  $('.navbar').on('click', 'a', function(){
    let page = $(this).attr('id');
    if (page!='recommended') {
      window.history.pushState(page, page, page+'.php');
    } else {
      window.history.pushState(page, page, 'index.php');
    }
    getData(page);
  });

  function getData(page) {
    switch (page) {
      case 'top-chart': $('.page-load').load('php/top-chart.php'); break;
      case 'premium': $('.page-load').load('php/premium.php'); break;
      case 'new-release': $('.page-load').load('php/new-release.php'); break;
      default: $('.page-load').load('php/index.php'); break;
    }
    if (page == '#' || page == '') {
      page ='recommended';
    }
    changeActivePage(page);
  }

  window.addEventListener('popstate', function() {
    let page = location.pathname.split('/').pop();
    page = page.split('.');
    page = page[0];
    getData(page);
  });

  //navbar active
  function changeActivePage(page) {
      $('#new-release').removeClass('active');
      $('#premium').removeClass('active');
      $('#recommended').removeClass('active');
      $('#top-chart').removeClass('active');
      $('#'+page).addClass('active');
  }

  //fav song hover
  $('#fav-thissong').mouseover(function() {
    $('#fav-thissong').css("color", "#ED215D");
  });
  $('#fav-thissong').mouseout(function() {
    $('#fav-thissong').css("color", "white");
  });

  //toggle_button
  function play_toggle() {
    let a = $('#play-btn').find('i').attr('class');
    if (a == 'fas fa-play') {
      $('#play-btn').find('i').attr('class', 'fas fa-pause');
      return true;
    } else if (a == 'fas fa-pause') {
      $('#play-btn').find('i').attr('class', 'fas fa-play');
      return false;
    }
    return false;
  }

  //initial
  audioElement.setAttribute('src', 'https://onedrive.live.com/download?cid=3B348A8A1E7D50B0&resid=3B348A8A1E7D50B0%212288&authkey=AIqHCP4hhK35kdc');
  audioElement.addEventListener('timeupdate',updateProgress);
  $('#song-title').text("Happier");
  $('#song-artist').text('Marshmello ft. Bastille');
  $('#song-img').attr('src', 'https://upload.wikimedia.org/wikipedia/en/thumb/e/e5/Marshmello_and_Bastille_Happier.png/220px-Marshmello_and_Bastille_Happier.png');

  //when click play btn
  $('#play-btn').click(function() {
    if (play_toggle()) {
      audioElement.play();
    } else {
      audioElement.pause();
    }
  });

  $('#button-play').click(function() {
    audioElement.play();
    $('#play-btn').find('i').attr('class', 'fas fa-pause');
  });

  //play when click on image album -- chart
  $('.play-this-song').click(function() {
    let info = $(this).attr('id');
    info = info.split("^");

    audioElement.setAttribute('src', info[1]);
    $('#song-title').text(info[0]);
    $('#song-artist').text(info[3]);
    $('#song-img').attr('src', info[2]);

    audioElement.play();
    $('#play-btn').find('i').attr('class', 'fas fa-pause');
  });


// update pin on music player
function updateProgress() {
  let percent = (audioElement.currentTime / audioElement.duration)*100;
  $('.progress').css('width', percent+"%");

  if (audioElement.currentTime == audioElement.duration) {
    $('#play-btn').find('i').attr('class', 'fas fa-play');
  }
}

  audioElement.addEventListener("timeupdate", function() {
    $("#current-time").text(toBetterTime(audioElement.currentTime));
    $("#total-time").text(toBetterTime(audioElement.duration));
  });

//change millisecond to minite :)
  function toBetterTime(time) {
    let minutes = Math.floor(time / 60);
    let seconds = Math.floor(time - minutes * 60);
    return (minutes < 10 ? '0' : '') + minutes + ":" + (seconds < 10 ? '0' : '') + seconds;
  }

});
