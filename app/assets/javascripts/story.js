jQuery(document).ready(function(){
  jwplayer('video-story').setup({
    flashplayer: '/assets/jwplayer/jwplayer.flash.swf',
    file: '/assets/wedding-talk.mp4',
    height: 473,
    width: 840,
    controlbar: {position:'over', 
                 idlehide: false,
                 visible: true},
    logo: {file:'assets/mspg-logo.png'}
  });
});
