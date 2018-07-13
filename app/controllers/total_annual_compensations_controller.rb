class TotalAnnualCompensationsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :find_person
	before_action :find_total_annual_compensation, only: [:show, :update, :edit, :destroy]

	def index
		@total_annual_compensation = @person.total_annual_compensation
	end
	def create
		@total_annual_compensation = TotalAnnualCompensation.create(total_annual_compensation_params)
		redirect_to person_total_annual_compensation_path(id: @total_annual_compensation.id)
	end
	def new
		@total_annual_compensation = TotalAnnualCompensation.new
	end
	def edit
	end
	def show
	end
	def update
		@total_annual_compensation.update_attributes(total_annual_compensation_params)
		redirect_to person_total_annual_compensation_path(id: @total_annual_compensation.id)
	end
	def destroy
		@total_annual_compensation.destroy
		redirect_to person_total_annual_compensations_path
	end
	private
	def find_person
		@person = Person.find(params[:person_id])
	end
	def total_annual_compensation_params
		output = params.require(:total_annual_compensation).permit(:fixed_salary, :total_sales)
		output.merge(person_id: @person.id)
	end
	def find_total_annual_compensation
		@total_annual_compensation = TotalAnnualCompensation.find(params[:id])
	end
end
