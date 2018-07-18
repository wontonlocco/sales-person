class DestroyPerson
	attr_reader :person, :name, :addres, :total_sales
	def initialize(person, name, address, total_sales, id)
		@person = person
		@name = name
		@address = address
		@total_sales = total_sales
	end
	def call
		
	end
end
