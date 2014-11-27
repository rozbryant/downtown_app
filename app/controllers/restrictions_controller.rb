class RestrictionsController < ApplicationController
  def index
    @restrictions = Restriction.all
  end

  def show
    @restriction = Restriction.find(params[:id])
  end

  def new
    @restriction = Restriction.new
  end

  def create
    @restriction = Restriction.new
    @restriction.building_id = params[:building_id]
    @restriction.no_rental = params[:no_rental]
    @restriction.rental_cap = params[:rental_cap]
    @restriction.credit = params[:credit]
    @restriction.reference = params[:reference]
    @restriction.interview = params[:interview]
    @restriction.min_down = params[:min_down]
    @restriction.no_cat = params[:no_cat]
    @restriction.no_dog = params[:no_dog]
    @restriction.cat_count_limit = params[:cat_count_limit]
    @restriction.dog_count_limit = params[:dog_count_limit]
    @restriction.dog_weight_limit = params[:dog_weight_limit]
    @restriction.all_dog_weight_limit = params[:all_dog_weight_limit]
    @restriction.all_pet_count_limit = params[:all_pet_count_limit]
    @restriction.note = params[:note]

    if @restriction.save
      redirect_to "/restrictions", :notice => "Restriction created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restriction = Restriction.find(params[:id])
  end

  def update
    @restriction = Restriction.find(params[:id])

    @restriction.building_id = params[:building_id]
    @restriction.no_rental = params[:no_rental]
    @restriction.rental_cap = params[:rental_cap]
    @restriction.credit = params[:credit]
    @restriction.reference = params[:reference]
    @restriction.interview = params[:interview]
    @restriction.min_down = params[:min_down]
    @restriction.no_cat = params[:no_cat]
    @restriction.no_dog = params[:no_dog]
    @restriction.cat_count_limit = params[:cat_count_limit]
    @restriction.dog_count_limit = params[:dog_count_limit]
    @restriction.dog_weight_limit = params[:dog_weight_limit]
    @restriction.all_dog_weight_limit = params[:all_dog_weight_limit]
    @restriction.all_pet_count_limit = params[:all_pet_count_limit]
    @restriction.note = params[:note]

    if @restriction.save
      redirect_to "/restrictions", :notice => "Restriction updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restriction = Restriction.find(params[:id])

    @restriction.destroy

    redirect_to "/restrictions", :notice => "Restriction deleted."
  end
end
