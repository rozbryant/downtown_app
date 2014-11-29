class StatsController < ApplicationController
  def index
    @stats = Stat.all
  end

  def show
    @stat = Stat.find(params[:id])
  end

  def new
    @stat = Stat.new
  end

  def create
    @stat = Stat.new
    @stat.building_id = params[:building_id]
    @stat.ownership = params[:ownership]
    @stat.year_built = params[:year_built]
    @stat.unit_count = params[:unit_count]
    @stat.stories = params[:stories]
    @stat.note = params[:note]

    if @stat.save
      redirect_to "/stats", :notice => "Stat created successfully."
    else
      render 'new'
    end
  end

  def edit
    @stat = Stat.find(params[:id])
  end

  def update
    @stat = Stat.find(params[:id])

    @stat.building_id = params[:building_id]
    @stat.ownership = params[:ownership]
    @stat.year_built = params[:year_built]
    @stat.unit_count = params[:unit_count]
    @stat.stories = params[:stories]
    @stat.note = params[:note]

    if @stat.save
      redirect_to "/stats", :notice => "Stat updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @stat = Stat.find(params[:id])

    @stat.destroy

    redirect_to "/stats", :notice => "Stat deleted."
  end
end
