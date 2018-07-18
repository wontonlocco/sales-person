class CreatesPerson
	attr_reader :person_attrs, :errors, :person, :name, :total_sales, :address

	def initialize(person_attrs, errors, person, name, total_sales, address)
		@person_attrs = person_attrs
		@errors = []
		@person = Person.find(params[:id])
		@name = name
		@total_sales = total_sales
		@address = address	
	end
	def call
		@person = Person.new(person_attrs)
		service.call
		@person = service.person 

		if service.success?
			redirect_to @person, notice: 'Person was successfully created'
		else
			render :new
		end

		@person.save

	end
	def success?
		errors.none?
	end
end