# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
sales_person_2 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_1 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_3 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_4 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_5 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_6 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_7 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_8 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_9 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_10 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address) 
sales_person_11 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)
sales_person_12 = Person.create!(name: Faker::Name.name, address: Faker::Address.full_address)

TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_1)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_2)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_3)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_4)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_5)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_6)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_7)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_8)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_9)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_10)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_11)
TotalAnnualCompensation.create!(total_sales: ('%010d' % rand(10 ** 10)), fixed_salary: FIXEDSALARY, person: sales_person_12)