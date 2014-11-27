class AttributesController < ApplicationController
  def index
    @attributes = Attribute.all
  end

  def show
    @attribute = Attribute.find(params[:id])
  end

  def new
    @attribute = Attribute.new
  end

  def create
    @attribute = Attribute.new
    @attribute.building_id = params[:building_id]
    @attribute.ownership = params[:ownership]
    @attribute.unit_count = params[:unit_count]
    @attribute.stories = params[:stories]
    @attribute.note = params[:note]

    if @attribute.save
      redirect_to "/attributes", :notice => "Attribute created successfully."
    else
      render 'new'
    end
  end

  def edit
    @attribute = Attribute.find(params[:id])
  end

  def update
    @attribute = Attribute.find(params[:id])

    @attribute.building_id = params[:building_id]
    @attribute.ownership = params[:ownership]
    @attribute.unit_count = params[:unit_count]
    @attribute.stories = params[:stories]
    @attribute.note = params[:note]

    if @attribute.save
      redirect_to "/attributes", :notice => "Attribute updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @attribute = Attribute.find(params[:id])

    @attribute.destroy

    redirect_to "/attributes", :notice => "Attribute deleted."
  end
end
