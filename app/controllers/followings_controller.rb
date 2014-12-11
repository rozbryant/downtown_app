class FollowingsController < ApplicationController
  def index
    @followings = Following.all
  end

  def show
    @following = Following.find(params[:id])
  end

  def new
    @following = Following.new
  end

  def create
    @following = Following.new
    @following.follower_id = params[:follower_id]
    @following.building_id = params[:building_id]
    @following.buyer = params[:buyer]
    @following.seller = params[:seller]
    @following.note = params[:note]

    if @following.save
      redirect_to :back, :notice => "Following created successfully."
    else
      render 'new'
    end
  end

  def edit
    @following = Following.find(params[:id])
  end

  def update
    @following = Following.find(params[:id])

    @following.follower_id = params[:follower_id]
    @following.building_id = params[:building_id]
    @following.buyer = params[:buyer]
    @following.seller = params[:seller]
    @following.note = params[:note]

    if @following.save
      redirect_to "/followings", :notice => "Following updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @following = Following.find(params[:id])

    @following.destroy

    redirect_to "/followings", :notice => "Following deleted."
  end
end
