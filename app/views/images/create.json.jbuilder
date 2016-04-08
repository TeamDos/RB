json.user @image.user, :username, :password
json.create @image.create, :caption, :url
json.url @image.img.url
json.caption @image.img.caption