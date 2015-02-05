class RestaurantsController < ApplicationController


	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
		@restaurant = Restaurant.create(params.require(:restaurant).permit(:name,:phone,:address,:photo))
		if @restaurant.save
			redirect_to @restaurant
		else
			render 'new'
		end
	end

	def show
		@restaurant = Restaurant.find(params[:id])
		@reviews = @restaurant.reviews.all
		@review = @restaurant.reviews.build
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end

	def destroy
		@restaurant = Restaurant.find(params[:id])
		@restaurant.destroy
	end



end
