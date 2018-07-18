# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# random_people = Array.new(rand(10..30)) { Person.create!(name: Faker::Name.name, address: Faker::Address.full_address) }
# 	ran_num = rand(10..30)
# 	ran_num.times do |num|
# 		Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
# 	end
# 	Array.new(rand(100..300)) {Deal.create!(person_id: random_person, title: Faker::Commerce.department(2, true), description: Faker::Commerce.product_name, amount: Faker::Commerce.price)}
rand(10..30).times do 
	person = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
	rand(1000..3000).times do 
		Deal.create!(person: person, title: Faker::Commerce.department(2, true), description: Faker::Commerce.product_name, amount: Faker::Commerce.price)
	end
end