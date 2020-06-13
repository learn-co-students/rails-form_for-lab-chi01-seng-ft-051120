require 'faker'

Student.destroy_all
SchoolClass.destroy_all

10.times do 
  Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)
end

10.times do 
  SchoolClass.create(title: Faker::Book.title, room_number: Faker::Number.number(digits: 2))
end