class ServicesController < ApplicationController
  def index
    @services = Service.all
  end

  def show
    @service = Service.find(params[:id])
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new
    @service.building_id = params[:building_id]
    @service.part_door = params[:part_door]
    @service.full_door = params[:full_door]
    @service.catering = params[:catering]
    @service.housekeeping = params[:housekeeping]
    @service.dry_cleaning = params[:dry_cleaning]
    @service.concierge = params[:concierge]
    @service.package_receiving = params[:package_receiving]
    @service.car_wash = params[:car_wash]
    @service.dog_wash = params[:dog_wash]
    @service.restaurant = params[:restaurant]
    @service.social = params[:social]
    @service.groceries = params[:groceries]
    @service.note = params[:note]

    if @service.save
      redirect_to "/services", :notice => "Service created successfully."
    else
      render 'new'
    end
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])

    @service.building_id = params[:building_id]
    @service.part_door = params[:part_door]
    @service.full_door = params[:full_door]
    @service.catering = params[:catering]
    @service.housekeeping = params[:housekeeping]
    @service.dry_cleaning = params[:dry_cleaning]
    @service.concierge = params[:concierge]
    @service.package_receiving = params[:package_receiving]
    @service.car_wash = params[:car_wash]
    @service.dog_wash = params[:dog_wash]
    @service.restaurant = params[:restaurant]
    @service.social = params[:social]
    @service.groceries = params[:groceries]
    @service.note = params[:note]

    if @service.save
      redirect_to "/services", :notice => "Service updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @service = Service.find(params[:id])

    @service.destroy

    redirect_to "/services", :notice => "Service deleted."
  end
end
