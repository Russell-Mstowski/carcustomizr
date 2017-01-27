json.array! @customizations.each do |customization|
  json.id customization.id
  json.name customization.car.make
  json.color customization.color
end