class BuildingsController < ApplicationController
  def index
    @buildings = Building.all
  end

  def show
    @building = Building.find(params[:id])
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new
    @building.name = params[:name]
    @building.address = params[:address]
    @building.city = params[:city]
    @building.state = params[:state]
    @building.zip = params[:zip]
    @building.headline = params[:headline]

    if @building.save
      redirect_to "/buildings", :notice => "Building created successfully."
    else
      render 'new'
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])

    @building.name = params[:name]
    @building.address = params[:address]
    @building.city = params[:city]
    @building.state = params[:state]
    @building.zip = params[:zip]
    @building.headline = params[:headline]

    if @building.save
      redirect_to "/buildings", :notice => "Building updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @building = Building.find(params[:id])

    @building.destroy

    redirect_to "/buildings", :notice => "Building deleted."
  end
end
