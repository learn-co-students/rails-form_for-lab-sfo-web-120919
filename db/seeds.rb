# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
s1 = Student.create(first_name:"george",last_name:"ferry")
s2 = Student.create(first_name:"benton",last_name:"glow")

sc1 = SchoolClass.create(title:"Class 1",room_number:"23")
sc2 = SchoolClass.create(title:"Class 2",room_number:"12")