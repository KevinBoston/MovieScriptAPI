# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


marvel = List.create(name: "MCU", color: "red")
dc = List.create(name: "DC Expanded Universe", color: "blue")
other_movies = List.create(name: "Other movies", color: "green")

iron_man = Movie.create(list_id: 1, title: "Iron Man", starring: "Robert Downey Junior", url: "none", description: "An awesome way to start a series.")
the_avengers = Movie.create(list_id: 1, title: "Marvel's The Avengers", starring: "Robert Downey Junior", url: "none", description: "Everything we ever wanted!")

man_of_steel = Movie.create(list_id: 2, title: "Man of Steel", starring: "Henry Cavil", url: "none", description: "Henry Cavil is Superman.")

