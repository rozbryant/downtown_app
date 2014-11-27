class ActivesController < ApplicationController
  def index
    @actives = Active.all
  end

  def show
    @active = Active.find(params[:id])
  end

  def new
    @active = Active.new
  end

  def create
    @active = Active.new
    @active.building_id = params[:building_id]
    @active.fitness = params[:fitness]
    @active.in_pool = params[:in_pool]
    @active.out_pool = params[:out_pool]
    @active.in_tennis = params[:in_tennis]
    @active.out_tennis = params[:out_tennis]
    @active.bball = params[:bball]
    @active.spa = params[:spa]
    @active.note = params[:note]

    if @active.save
      redirect_to "/actives", :notice => "Active created successfully."
    else
      render 'new'
    end
  end

  def edit
    @active = Active.find(params[:id])
  end

  def update
    @active = Active.find(params[:id])

    @active.building_id = params[:building_id]
    @active.fitness = params[:fitness]
    @active.in_pool = params[:in_pool]
    @active.out_pool = params[:out_pool]
    @active.in_tennis = params[:in_tennis]
    @active.out_tennis = params[:out_tennis]
    @active.bball = params[:bball]
    @active.spa = params[:spa]
    @active.note = params[:note]

    if @active.save
      redirect_to "/actives", :notice => "Active updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @active = Active.find(params[:id])

    @active.destroy

    redirect_to "/actives", :notice => "Active deleted."
  end
end
