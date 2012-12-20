jQuery.noConflict
$ = jQuery

$(window).load(->
  $('#page div.photos-content').masonry
    itemSelector : '.griditem'
    columnWidth : 280

    $("div.photos-content img.lazy").lazyload()
  )

