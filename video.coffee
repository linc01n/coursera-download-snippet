$(".course-lecture-item-resource a[title=\"Video (MP4)\"]").each ->
  url = @href
  filename = $(this).children("div").first().text()
  $(this).attr "download", filename
  evt = document.createEvent('MouseEvents')
  evt.initMouseEvent('click', true, true, window, 1, 0, 0, 0, 0, false, false, false, false, 0, null)
  this.dispatchEvent(evt)