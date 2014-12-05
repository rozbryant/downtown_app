class AreasController < ApplicationController
  def index
    @areas = Area.all
  end

  def show
    @area = Area.find(params[:id])
  end

  def new
    @area = Area.new
  end

  def create
    @area = Area.new
    @area.name = params[:name]

    if @area.save
      redirect_to "/areas/new", :notice => "Area created successfully."
    else
      render 'new'
    end
  end

  def edit
    @area = Area.find(params[:id])
  end

  def update
    @area = Area.find(params[:id])

    @area.name = params[:name]

    if @area.save
      redirect_to "/areas", :notice => "Area updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @area = Area.find(params[:id])

    @area.destroy

    redirect_to "/areas", :notice => "Area deleted."
  end

  # def search

  #   @area = Area.find(params[:name :address :area.name])

  # end
end
