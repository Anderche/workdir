class HotelsController < ApplicationController

	before_action :set_hotel, only: %i[show edit update destroy]

	def index # GET /hotels
		@hotel = Hotel.all
	end

	def show # GET /hotels/:id
	end

	def new # GET /hotels/new
	end

	def create # POST /hotels
	end

	def edit # GET /hotels/:id/edit
	end

	def update # PATCH /hotels/:id
	end

	def destroy # DELETE /hotels/:id
	end


	private

	# def user_events_filter(preference)
	# 	current_user.user_events.where(status: preference).map(&:event).reverse
	# end

	def set_hotel
		@hotel = Hotel.find(params[:id])
	end

	def hotel_params
		params.require(:hotel).permit(:name, :country_code, :description)
	end

end
