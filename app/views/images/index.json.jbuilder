json.images @images do |image|
  json.url image.img.url
  json.caption image.caption
  json.country image.country
end
