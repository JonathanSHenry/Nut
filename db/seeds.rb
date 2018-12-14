# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#seeds database with sample users
User.create!(name:  "Example User",
             email: "example@railstutorial.org",
             password:              "foobar",
             password_confirmation: "foobar",
             admin: true)

10.times do |n|
  name  = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "password"
  peanut = true
  dairy = true
  soy = true
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password,
               peanut: peanut,
               dairy: dairy,
               soy: soy)

restaurant_list = [
  ["Luigi's Pizza", "Your basic pizza place.", "www.luigispizzafresca.com/fairmount.php", true, false, true, true, false, false],
  ["Wendy's", "It's waaaay better than fast food. It's Wendy's.", "www.wendys.com", false, true, true, true, false, false],
  ["McDonald's", "I'm lovin' it.", "www.mcdonalds.com/us/en-us.html", false, false, true, true, false, true],
  ["Burger King", "Have It Your Way", "www.burgerking.com", true, false, false, true, false, true],
  ["Emily's Latkes", "Hanukkah food all year round!", "www.potatoes.com", false, true, false, true, false, true],
  ["Jon's Breakfast Sandwiches", "Eat them as you run to class!", "s3.amazonaws.com/pixtruder/original_images/d96d3393ab578175d3e38cbff9e940f4ec02183f", true, false, true, false, true, false ],
  ["Stef's Pies", "What's your favorite kind of pie?", "images.midwestliving.mdpcdn.com/sites/midwestliving.com/files/styles/slide/public/Millionaires-Pie-101440700_0.jpg", false, true, true, false, false, true],
  ["Lauren's Fries", "Gluten free and DELICIOUS!", "cdns.abclocal.go.com/content/kabc/images/cms/automation/vod/120318-fries.jpg", true, true, true, false, false, false],
  ["Peter's Shakes", "Shakes so good, you'll scream!", "hips.hearstapps.com/del.h-cdn.co/assets/15/24/1600x800/landscape-1433889344-del-milkshakes-index.jpg?resize=480:*", false, false, false, true, true, true]
]

users = User.order(:created_at).take(1)
  restaurant_list.each do |name, description, menu, peanut, gluten, dairy, egg, soy, shellfish|
  users.each { |user| user.restaurants.create!(name: name, description: description, menu: menu,
                                               peanut: peanut, gluten: gluten, dairy: dairy,
                                               egg: egg, soy: soy, shellfish: shellfish) }
end

end