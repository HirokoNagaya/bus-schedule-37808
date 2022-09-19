class DestinationsController < ApplicationController

  def new
    @destination = Destination.new
  end

  def create
    @destination = Destination.new(destination_params)
    if @destination.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def destination_params
      params.require(:destination).permit(:user_id, :month, :long_distance, :middle_distance, :short_distance)
    end

end
