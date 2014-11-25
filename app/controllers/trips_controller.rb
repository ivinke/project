class TripsController < ApplicationController
  def index
    @trips = Trip.all
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new
    @trip.from_city_id = params[:from_city_id]
    @trip.to_city_id = params[:to_city_id]
    @trip.user_id = params[:user_id]
    @trip.time = params[:time]
    @trip.cost = params[:cost]
    @trip.notes = params[:notes]
    @trip.photo = params[:photo]
    @trip.transportation = params[:transportation]

    if @trip.save
      redirect_to "/trips", :notice => "Trip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    @trip.from_city_id = params[:from_city_id]
    @trip.to_city_id = params[:to_city_id]
    @trip.user_id = params[:user_id]
    @trip.time = params[:time]
    @trip.cost = params[:cost]
    @trip.notes = params[:notes]
    @trip.photo = params[:photo]
    @trip.transportation = params[:transportation]

    if @trip.save
      redirect_to "/trips", :notice => "Trip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    redirect_to "/trips", :notice => "Trip deleted."
  end



  def search
    @trip = Trip.find(params[:id])
  end
end
