# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.create([{
  first_name: "William",
  last_name: "Lowrimore",
  email: "wlowrimore@coroutine.com",
  password: "WNTM@family19",
  password_confirmation: "WNTM@family19"
},
{
  first_name: "Tim",
  last_name: "Lowrimore",
  email: "tlowrimore@coroutine.com",
  password: "Bigbro75",
  password_confirmation: "Bigbro75"
}])

p "Created #{User.count} users"