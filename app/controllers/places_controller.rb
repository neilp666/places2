class PlacesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit, :create, :update, :destroy]
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @places = Place.all
    respond_with(@places)
  end

  def show
    @reviews = @place.reviews
    @review = Review.new
  end

  def new
    @place = Place.new
    respond_with(@place)
  end

  def edit
  end

  def create
    @place = current_user.places.new(place_params)

    respond_to do |format|
      if @place.save
        format.html { redirect_to @place, notice: 'Place was successfully created'}
      else
        format.html { render :new }
      end
    end
  end

  def update
    @place.update(place_params)
    respond_with(@place)
  end

  def destroy
    @place.destroy
    respond_with(@place)
  end

  private
    def set_place
      @place = Place.find(params[:id])
    end

    def place_params
      params.require(:place).permit(:name, :address, :description, :phone, :website)
    end
end
