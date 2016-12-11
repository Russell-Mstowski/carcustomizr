names = [ "John", "luke", "George", "Chris"]

names.each do |name|
  user = User.new(
    name: name,
    email: "#{name}@gmail.com",
    password: "password")
  user.save
end

Car.create(make: "Mercedes Benz", model: "SLS", year: "2016")
Car.create(make: "Bwm", model: "i8", year: "2016")
Car.create(make: "Lamborghini", model: "Aventador", year: "2016")
Car.create(make: "Tesla", model: "Model X", year: "2016")

cars = Car.all
users = User.all

cars.each do |car|
  users.each do |user|
    customization = Customization.new(
      color: ["yellow", "blue", "green", "silver", "black", "white", "red"].sample,
      rims: ["alloy", "steel", "aluminum", "stainless steel", "plastic", "metal"].sample,
      wheels: ["18", "19", "20", "21", "22"].sample,
      car_id: car.id,
      user_id: user.id)

    customization.save
  end
end

puts "done"