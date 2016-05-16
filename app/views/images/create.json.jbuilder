json.images @images do |image|
  json.url image.img
  json.caption image.caption
  json.country image.country
end