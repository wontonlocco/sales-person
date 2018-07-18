class DealsController < ApplicationController
	skip_before_action :verify_authenticity_token
	before_action :find_person
	before_action :find_deal, only: [:show, :update, :edit, :destroy]

	def index
		@deals = @person.deals
	end
	def create
		@deal = Deal.create(deal_params)
		redirect_to person_deal_path(id: @deal.id)
	end
	def new
		@deal = Deal.new
	end
	def edit
	end
	def show
	end
	def update
		@deal.update_attributes(deal_params)
		redirect_to person_deal_path(id: @deal.id)
	end
	def destroy
		@deal.destroy
		redirect_to person_deals_path
	end
	private
	def find_person
		@person = Person.find(params[:person_id])
	end
	def deal_params
		output = params.require(:deal).permit(:title, :description, :amount)
		output.merge(person_id: @person.id)
	end
	def find_deal
		@deal = Deal.find(params[:id])
	end
end
