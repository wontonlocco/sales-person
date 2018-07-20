class PeopleController < ApplicationController
	before_action :find_person, only: [:show, :edit, :update, :destroy]
	skip_before_action :verify_authenticity_token 
	def index
		@people = Person.all
	end
	def create
		@person = Person.create!(person_params)
		if @person.save
			redirect_to @person, notice: 'Person was successfully created.'
		else
			render :new
		end
	end
	def new
		@person = Person.new
	end
	def edit	
	end
	def update
		@person.update_attributes(person_params)
		redirect_to @person
	end
	def destroy
		@person.destroy
		redirect_to people_path
	end
	def show	
	end
	private
	def person_params
		params.require(:person).permit(:name, :address, :latitude, :longitude)
	end
	def find_person
		@person = Person.find(params[:id])
	end
end
