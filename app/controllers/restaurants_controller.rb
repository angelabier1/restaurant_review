class RestaurantsController < ApplicationController

	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(params.require(:restaurant).permit(:name,:phone,:address))
		if @restaurant.save
			redirect_to @article
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
	end


end
