class Person < ApplicationRecord
	has_many :deals
	def calculate_commission
  	combined_amount = deals.map do |deal| 
  		amount = deal.amount
  		amount.to_f
  	end
  		.reduce(:+)  
  	 FIXEDSALARY + (combined_amount * COMMISSION_RATE)
  end
end
