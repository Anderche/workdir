class HotelsController < ApplicationController

	before_action :set_hotel, only: %i[show edit update destroy]

	def index # GET /hotels
		@hotel = Hotel.all
	end

	def show # GET /hotels/:id
		@hotel = Hotel.find(params[:id])
	end

	def new # GET /hotels/new
		@hotel = Hotel.new
	end

	def create # POST /hotels
		@hotel = Hotel.new(hotel_params)
		
		if @hotel.save
			redirect_to hotels_path
		else
      render 'new'
    end
	end

	def edit # GET /hotels/:id/edit
	end

	def update # PATCH /hotels/:id
		@hotel.update(hotel_params)

		if @hotel.save
      redirect_to hotels_path
    else
      render 'edit'
    end
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
