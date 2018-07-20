class Person < ApplicationRecord
	has_many :deals
	validates :name, presence: true
	validates :address, presence: true
	

	geocoded_by :address
	after_validation :geocode
	def calculate_commission
		combined_amount = deals.map do |deal| 
			amount = deal.amount
			amount.to_f
		end
		.reduce(:+)  
		FIXEDSALARY + (combined_amount * COMMISSION_RATE)
	end
	def calculate_total_sales
		total_sales = deals.map do |deal|
			amount = deal.amount
			amount.to_f
		end
		total_sales.reduce(:+)
	end
	def show_commission_earned_only
		total_sales = deals.map do |deal|
			amount = deal.amount
			amount.to_f
		end
		total_sales.reduce(:+) * 0.05
	end
end
