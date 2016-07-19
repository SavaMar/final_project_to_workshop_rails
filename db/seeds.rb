# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# AdminUser.create!(email: 'mari@example.com', password: 'password', password_confirmation: 'password')

User.create(first_name: 'Jho', last_name: 'Filippi', age: 13, gender: 1, country: 'Ukrai', city: 'Lviv', password: '12345678', email: 'marilo1@example.com')
User.create(first_name: 'Mono', last_name: 'Karilo', age: 13, gender: 1, country: 'Ukrai', city: 'Lviv', password: '12345678', email: 'marilo2@example.com')

(3..50).each do |i|
  User.create!(email: "#{i}email@mail.com", password: "12345678", password_confirmation: "12345678", 
    first_name: "malini#{i}", last_name: "last#{i}", age:23, gender:1, city: "Kiev", country: 'Ukraine')
end
