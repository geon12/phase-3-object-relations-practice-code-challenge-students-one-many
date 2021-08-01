puts "Clearing old data..."
Student.destroy_all
Cohort.destroy_all


# This will create 5 cohorts using a random date
puts "Seeding cohorts..."
c1 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c2 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c3 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c4 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)
c5 = Cohort.create(
  name: "nyc-dumbo-web-#{Faker::Date.forward(days: 365).strftime("%m%d%Y")}",
  current_mod: rand(1..5)
)

puts "Seeding students..."
# TODO: create seed data for students
# check your schema and make sure to create students with all the necessary data

20.times do 
    Student.create(name: Faker::Name.name,age: rand(5..18),cohort_id: Cohort.all[rand(5)].id)
end

puts "Done!"