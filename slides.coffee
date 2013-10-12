$(".course-lecture-item-resource a[title=\"Slides\"]").each ->
  url = @href
  filename = url.substring(url.lastIndexOf("/") + 1)
  console.log filename
  $(this).attr "download", filename
  evt = document.createEvent('MouseEvents')
  evt.initMouseEvent('click', true, true, window, 1, 0, 0, 0, 0, false, false, false, false, 0, null)
  this.dispatchEvent(evt)

