# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolClass.create(title: "Science", room_number: "2")
SchoolClass.create(title: "Drama", room_number: "13")
SchoolClass.create(title: "Photography", room_number: "11")
SchoolClass.create(title: "Math", room_number: "12")

Student.create(first_name: "Kate", last_name: "Brown")
Student.create(first_name: "Amy", last_name: "Witty")
Student.create(first_name: "Kim", last_name: "Gright")
Student.create(first_name: "John", last_name: "Bub")