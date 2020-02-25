class BookingsController < ApplicationController

    def new
        @booking = Booking.new
    end

    def create
        @booking = Booking.new(booking_params)
        if @booking.save
            redirect_to booking_path(@booking)
        else
            render :new
        end
    end

    private

    def booking_params
        params.require(:booking).permit(:date_from, :date_to)
    end
end