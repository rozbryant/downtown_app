class SpacesController < ApplicationController
  def index
    @spaces = Space.all
  end

  def show
    @space = Space.find(params[:id])
  end

  def new
    @space = Space.new
  end

  def create
    @space = Space.new
    @space.building_id = params[:building_id]
    @space.storage = params[:storage]
    @space.bike_storage = params[:bike_storage]
    @space.party_room = params[:party_room]
    @space.sundeck = params[:sundeck]
    @space.parking_leased = params[:parking_leased]
    @space.parking_owned = params[:parking_owned]
    @space.wine_cellar = params[:wine_cellar]
    @space.humidor = params[:humidor]
    @space.dog_run = params[:dog_run]
    @space.lounge = params[:lounge]
    @space.biz_center = params[:biz_center]
    @space.conf_room = params[:conf_room]
    @space.theater = params[:theater]
    @space.guest_parking = params[:guest_parking]
    @space.guest_stay = params[:guest_stay]
    @space.note = params[:note]

    if @space.save
      redirect_to "/restrictions/new", :notice => "Space created successfully."
    else
      render 'new'
    end
  end

  def edit
    @space = Space.find(params[:id])
  end

  def update
    @space = Space.find(params[:id])

    @space.building_id = params[:building_id]
    @space.storage = params[:storage]
    @space.bike_storage = params[:bike_storage]
    @space.party_room = params[:party_room]
    @space.sundeck = params[:sundeck]
    @space.parking_leased = params[:parking_leased]
    @space.parking_owned = params[:parking_owned]
    @space.wine_cellar = params[:wine_cellar]
    @space.humidor = params[:humidor]
    @space.dog_run = params[:dog_run]
    @space.lounge = params[:lounge]
    @space.biz_center = params[:biz_center]
    @space.conf_room = params[:conf_room]
    @space.theater = params[:theater]
    @space.guest_parking = params[:guest_parking]
    @space.guest_stay = params[:guest_stay]
    @space.note = params[:note]

    if @space.save
      redirect_to "/spaces", :notice => "Space updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @space = Space.find(params[:id])

    @space.destroy

    redirect_to "/spaces", :notice => "Space deleted."
  end
end
