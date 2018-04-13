# FIX THIS

class PlacesController < ApplicationController
  def new
    @place = Place.new
  end

  def edit
    @place = Place.find params[:id]
  end

  def index
    @place = Place.all
  end

  def show
    @place = Place.find params[:id]
  end

  def create
    place = Place.new place_params
    if place.save
      redirect_to place # it worked!
    else
      render :new
    end
  end

  def update
    place = Place.find params[:id]
    place.update place_params
    redirect_to place
  end

  def destroy
    place = Place.find params[:id]
    place.destroy
    redirect_to places_path
  end

  private
  def place_params
    params.require(:place).permit(:name, :area, :length, :distance, :difficulty, :one_way, :fee, :access, :conditions, :safety)
  end
end
