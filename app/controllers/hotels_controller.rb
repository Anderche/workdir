class HotelsController < ApplicationController

	before_action :set_hotel, only: %i[show edit update destroy]

	def index # GET /hotels
		@hotel = Hotel.all
	end

	def show # GET /hotels/:id
		@hotel = Hotel.find(params[:id])
	end

  # def new
  #   @event = Event.new
  # end

  # def create
  #   @event = Event.new(event_params)

  #   if @event.save
  #     UserEvent.create(user: current_user, event: @event, status: 'admin')
  #     event_friends(params[:emails], @event)
  #     redirect_to events_path
  #   else
  #     render 'new'
  #   end
  # end

	def new # GET /hotels/new
		@hotel = Hotel.new
	end

	def create # POST /hotels
		@hotel = Hotel.new(hotel_params)
		@hotel.save
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
