class AssignmentsController < ApplicationController
  def index
    @assignments = Assignment.all
  end

  def show
    @assignment = Assignment.find(params[:id])
  end

  def new
    @assignment = Assignment.new
  end


  def create
    @assignment = Assignment.new
    @assignment.building_id = params[:building_id]
    @assignment.area_id = params[:area_id]

    if @assignment.save
      redirect_to "/stats/new", :notice => "Assignment created successfully."
    else
      render 'new'
    end
  end

  def edit
    @assignment = Assignment.find(params[:id])
  end

  def update
    @assignment = Assignment.find(params[:id])

    @assignment.building_id = params[:building_id]
    @assignment.area_id = params[:area_id]

    if @assignment.save
      redirect_to "/assignments", :notice => "Assignment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @assignment = Assignment.find(params[:id])

    @assignment.destroy

    redirect_to "/assignments", :notice => "Assignment deleted."
  end
end
