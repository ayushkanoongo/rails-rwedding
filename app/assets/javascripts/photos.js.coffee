jQuery.noConflict
$ = jQuery

$(window).load(->
  $('#page div.content').masonry
    itemSelector : '.griditem'
    columnWidth : 280

    $("img.lazy").lazyload()
  )

  

