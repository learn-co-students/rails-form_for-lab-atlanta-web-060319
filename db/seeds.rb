# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
SchoolClass.create(title: "math", room_number: 102)
SchoolClass.create(title: "reading", room_number: 103)
SchoolClass.create(title: "science", room_number: 104)
SchoolClass.create(title: "social studies", room_number: 105)

Student.create(first_name: "Alert", last_name: "Einstein")
Student.create(first_name: "Barack", last_name: "Obama")
Student.create(first_name: "Charles", last_name: "Darwin")
