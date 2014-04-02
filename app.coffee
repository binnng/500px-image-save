((doc, loc) ->

  if loc.host is "500px.com" and photo = doc.querySelector('.the_photo')

    image = photo.src
    body = doc.getElementsByTagName("body")[0]
    link = doc.createElement("a")
    link.id = "500px-image-save"
    link.href = image
    link.innerHTML = "下载图片"

    style = [
      "display: block"
      "position: fixed"
      "width: 40px"
      "right: 1em"
      "bottom: 2em"
      "height: 40px"
      "text-indent: -999em"
      "padding: 1em 0"
      "font-size: 1.6em"
      "background: url(http://tv.sohu.com/upload/sohuapp/download/skin/download_icon@2x.png)"
      "background-size: 70% 70%"
      "background-color: #ccc"
      "border-radius: 4px"
      "background-repeat: no-repeat"
      "background-position: center"
    ].join ";"

    link.setAttribute "style", style
    link.setAttribute "target", "_blank"

    body.appendChild link

) document, location