class BuildingsController < ApplicationController

  def index
    if params[:search]
      @buildings = Building.search(params[:search]).order("name DESC")
    else
      @buildings = Building.order("name DESC")
    end
  end

  def search
    #Put entry into params hash
    @buildings = Building.search(params[:search])
    #Search name and address fields in the Building table for params
    #Return records that match params
    render '_search'
  end


  def show
    @building = Building.find(params[:id])

  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new
    @building.image_url = params[:image_url]
    @building.name = params[:name]
    @building.address = params[:address]
    @building.city = params[:city]
    @building.state = params[:state]
    @building.zip = params[:zip]
    @building.headline = params[:headline]

    if @building.save
      redirect_to "/assignments/new", :notice => "Building created successfully."
    else
      render 'new'
    end
  end

  def edit
    @building = Building.find(params[:id])
  end

  def update
    @building = Building.find(params[:id])

    @building.image_url = params[:image_url]
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
